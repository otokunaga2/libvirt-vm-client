require 'sinatra'
require 'sinatra/reloader'
require './ruby-libvirt.rb'

get '/' do
 # libvirController = LibvritClinet.new
#  @vmlist = libvirController.compareVMList
  #create_connection
  @temp_conn = create_connection
  @list= @temp_conn.getDomainsList
  @compare_vmlist= compare_vmlist
  p @llst
  #@list = []
  erb :index
end

#共通処理を記述するお
helpers do 
  def create_connection
    @cont = LibClient.new
    return @cont
  end
  def compare_vmlist
    @cont = self.create_connection
    return @cont.compareVMList
  end
  
end

post '/' do
  create_connection
  @vmlist = @cont.getMList
  erb :index
end

error do
  'エラーが発生しました。 - ' + env['sinatra.error'].name
end


