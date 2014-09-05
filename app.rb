require 'sinatra'
require 'sinatra/reloader'
require './ruby-libvirt.rb'

get '/' do
 # libvirController = LibvritClinet.new
#  @vmlist = libvirController.compareVMList
  create_connection
  #@vmlist = @cont.getVMList
  erb :index
end

#共通処理を記述するお
helpers do 
  def create_connection
    @cont = LibClient.new
  end
end

post '/' do
  create_connection
  @vmlist = @cont.getVMList
  erb :index
end

error do
  'エラーが発生しました。 - ' + env['sinatra.error'].name
end


set :public, 'public'
