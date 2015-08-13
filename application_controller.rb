require_relative 'models/main.rb' 
require_relative 'models/message.rb'
require 'bundler' 
Bundler.require

class MyApp < Sinatra::Base
  
  get '/' do     
   erb :index
  end
  get '/donate' do
   erb :donate
  end 
  get '/time' do
    erb :time
  end 
  get '/news' do    #when the user clicks on the picture, it goes to /news and in the controller, I say that when the user makes a get request to the server to go to /news, then I want to go to the news.erb file
    erb :news
  end 
  get '/message' do
    erb :message
  end
  post '/message2' do
    @message = Message.new(params[:user],params[:friend],params[:button])
    erb :message2
  end 
  
  
end 