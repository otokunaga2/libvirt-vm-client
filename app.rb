require 'sinatra'
require 'sinatra/reloader'
require './libvirt-wrapper.rb'
require './dbmanager.rb'
configure do 
  @@libclient = LibClient.new
  @@iplists = Vmtarget.getAllIpaddr
	@current_ip = 0 
  #sessionの有効化
  enable :sessions
	@running_vm_list = []
	@hold_vm_list = []
  #fileからVMリストを読み出すことを実行する
end
helpers do 
end

before do
	@running_vm_list = []
end
get '/' do

	@running_vm_list = []
 erb :index
end

get '/vm/ipaddr/:ipaddr' do
  session[:currentip] = params[:ipaddr]
  @running_vm_list = @@libclient.compareVMList(params[:ipaddr])
  @hold_vm_list= @@libclient.compareVMWithCheck(session[:currentip])
	@current_ip = session[:currentip] 
  erb :index
end
after do
end

get '/vm/delete/*' do
  vm_name = params[:splat]
	vm_str = vm_name[0].to_s
end
get '/vm/resume/:domain' do
  vm_name = params[:domain]
	@@libclient.resume(vm_name,session[:currentip])
  @hold_vm_list= @@libclient.compareVMWithCheck(session[:currentip])
  erb :index
end

get '/vm/suspend/:domain' do
  vm_name = params[:domain]
	begin
   #@@libclient.suspend(vm_name,session[:current_ip])
    puts @@libclient.suspend(vm_name.to_s,session[:currentip])
	rescue => e
		@error_message=e
	end
  @hold_vm_list= @@libclient.compareVMWithCheck(session[:currentip])
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
