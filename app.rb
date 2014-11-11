require 'sinatra'
require 'sinatra/reloader'
require './ruby-libvirt.rb'
require 'haml'

#共通処理
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

before do
  @temp_conn = create_connection
  @list= @temp_conn.getDomainsList
  @compare_vmlist= compare_vmlist
end
get '/' do
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
