require 'sinatra'
require 'sinatra/reloader'
require './ruby-libvirt.rb'

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


get '/vm/resume/*' do
  vm_name = params[:splat]
	begin
    vm_str_name = vm_name[0].to_s	
		puts vm_str_name.inspect
		vm = @libvirt_insatance.get_specific_domain(vm_str_name)
		vm.resume
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
		vm.suspend
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
get '/vm/suspend/*' do
	puts params[:splat]
  vm_name = params[:splat]
	begin
  @libvirt_insatance.suspend(vm_name.to_s)
	rescue=>e
		@error_message="failed to suspend vm #{e}"
		#raise e
	end
  erb :index
end
get '/vm/run' do
	erb :index
end
get '/vm/delete/*' do
  erb :index
end
post '/' do
  create_connection

  @vmlist = @cont.getMList
  erb :index
end

error do
  'エラーが発生しました。 - ' + env['sinatra.error'].name
end

set :public, File.dirname("./public/css") 
set :environment, :production
