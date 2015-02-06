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
	@current_ip = 0 
  enable :sessions
	@running_vm_list = []
	@hold_vm_list = []
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
	@running_vm_list = []
end
get '/' do

	@running_vm_list = []
 erb :index
end

before do
  @hold_vm_list= @@libclient.compareVMWithCheck(session[:ipaddr])
end
get '/vm/ipaddr/:ipaddr' do
  session[:currentip] = params[:ipaddr]
  @running_vm_list = @@libclient.compareVMList(params[:ipaddr])
	@current_ip = session[:currentip] 
  erb :index
end

get '/vm/delete/*' do
  vm_name = params[:splat]
	vm_str = vm_name[0].to_s
end
get '/vm/resume/:domain*' do
  vm_name = params[:domain]
	vm = @@libclient.resume(vm_name,current_ip)
  @hold_vm_list= @@libclient.compareVMWithCheck(session[:ipaddr])
  erb :index
end

get '/vm/suspend/:domain*' do
  vm_name = params[:domain]
	begin
   #@@libclient.suspend(vm_name,session[:current_ip])
    puts @@libclient.get_specific_domain(vm_name.to_s,session[:current_ip])
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
