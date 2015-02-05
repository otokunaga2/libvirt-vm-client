require 'sinatra'
require 'sinatra/reloader'
require './libvirt-wrapper.rb'
require './dbmanager.rb'
#共通処理
#  TODO 必要な箇所でデータを取得したりするように修正
#       ー＞とくにlibvirt-wrapperのコンストラクタとデータを取得する箇所を切り分ける
#       必要なとき get '/vm/domain01' などを実行したときに初めて比較して、出力するようにロジックを買える
configure do
  @@libclient = LibClient.new
  @@iplists = Vmtarget.getAllIpaddr
  #fileからVMリストを読み出すことを実行する
end
helpers do 
end

before do
	#@libvirt_insatance = LibClient.new("157.1.138.6")
  #@list= @libvirt_insatance.getDomainsList
	#@idle_vm_list = @libvirt_insatance.idle_vm_list
	#@hold_vm_list = @libvirt_insatance.hold_vm_list
  #@compare_vmlist= @libvirt_insatance.compareVMList
end
get '/' do
 @running_vm_list,@hold_vm_list = @@libclient.compareVMList("157.1.138.7")
 @iplists = @@iplists 
 erb :index
end


get '/vm/ipaddr/:ipaddr' do
  @running_vm_list,@hold_vm_list = @@libclient.compareVMList("157.1.138.7")
end

get '/vm/delete/*' do
  vm_name = params[:splat]
	vm_str = vm_name[0].to_s
end
get '/vm/resume/*' do
  vm_name = params[:splat]
  vm_str_name = vm_name[0].to_s	
	
	vm = @libvirt_insatance.get_specific_domain(vm_str_name)
	if (vm != nil)
	  if( vm.state.first == 3)
	  	vm.resume
	  else
	    @error_message="already running"
	  end
	end
	#puts vm_name.methods
  #@libvirt_insatance.reboot(vm_str_name)
  erb :index
end


get '/vm/suspend/*' do
  vm_name = params[:splat]
	begin
    vm_str_name = vm_name[0].to_s	
		vm = @libvirt_insatance.suspend(vm_str_name)
    if vm 
		  if(vm.state.first != 3)
		   	vm.suspend
		  else
		  	@error_message="already suspended"
		  end
	  end	
	rescue => e
		@error_message=e
	end
	#puts vm_name.methods
  #@libvirt_insatance.reboot(vm_str_name)
  erb :index
end
get '/vm/reboot/*' do
  vm_name = params[:splat]
	begin
    vm_str_name = vm_name.to_s	
		@libvirt_insatance.reboot(vm_str_name)
	rescue => e
		@error_message=e
		puts "No method error#{e}"
	end
	#puts vm_name.methods
  #@libvirt_insatance.reboot(vm_str_name)
  erb :index
end

get '/vm/create' do
	@checklist = Vmdomain.all
  erb :create
end

#get 'vm/edit' do
#	@checklist = Vmdomain.all
#	erb :create
#end
#post '/vm/create' do
#  raw_name = params[:vm_name]
#	vm_name = raw_name.to_s
#	if Vmdomain.register_domain(vm_name) 
#  	erb :index
#	else
#		
#		erb :index
#	end
#end

error do
  'エラーが発生しました。 - ' 
end

set :public, File.dirname("./public/css") 
set :environment, :production
