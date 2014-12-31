require 'sinatra'
require 'sinatra/reloader'
require './libvirt-wrapper.rb'
require './dbmanager.rb'
#共通処理
helpers do 
	@error_message=nil
  def create_connection
    @cont = LibClient.new
    return @cont
  end
  def compare_vmlist
    @cont = self.create_connection
    return @cont.compareVMList
  end
end

before do
  @libvirt_insatance = create_connection
  @list= @libvirt_insatance.getDomainsList
	@idle_vm_list = @libvirt_insatance.idle_vm_list
	@hold_vm_list = @libvirt_insatance.hold_vm_list
  @compare_vmlist= compare_vmlist
end
get '/' do
	erb :index
end

get '/vm/delete/*' do
  vm_name = params[:splat]
	vm_str = vm_name[0].to_s
  target_domain = Vmdomain.where(:id=>vm_str).first
	target_domain.destroy
end
get '/vm/resume/*' do
  vm_name = params[:splat]
	begin
    vm_str_name = vm_name[0].to_s	
		puts vm_str_name.inspect
		vm = @libvirt_insatance.get_specific_domain(vm_str_name)
		if( vm.state.first == 3)
			vm.resume
		else
			@error_message="already running"
		end
	rescue => e
		@error_message=e
		puts "No method error#{e}"
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
		  Vmdomain.update_suspend_time(vm_str_name)
		  if(vm.state.first != 3)
		   	vm.suspend
		  else
		  	@error_message="already suspended"
		  end
	  end	
	rescue => e
		@error_message=e
		puts "No method error#{e}"
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
post '/vm/create' do
  raw_name = params[:vm_name]
	vm_name = raw_name.to_s
	if Vmdomain.register_domain(vm_name) 
  	erb :index
	else
		
		erb :index
	end
end
#get '/vm/suspend/*' do
#	puts params[:splat]
#  vm_name = params[:splat]
#	begin
#  @libvirt_insatance.suspend(vm_name.to_s)
#	rescue=>e
#		@error_message="failed to suspend vm #{e}"
#		#raise e
#	end
#  erb :index
#end

error do
  'エラーが発生しました。 - ' 
end

set :public, File.dirname("./public/css") 
set :environment, :production
