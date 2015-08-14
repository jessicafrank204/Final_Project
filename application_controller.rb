require_relative 'models/main.rb' 
require_relative 'models/message.rb'
require_relative 'models/maps.rb' #for any model files I want to use here 
require 'bundler'   #bundle is a gem that requires all the other gems and starts them up; it regulates the other gems - because I require bundler and then run the bundler (line5) the bundler goes to the gemfile for you and already runs the gems so you don't have to manually write require 'twilio-ruby'
# require 'twilio-ruby'
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
    @client = Twilio::REST::Client.new('ACed3ed813257f8acedfce46a695216257','cb1dd832eda91ea39319fe6827f1650b')
    @message = Message.new(params[:user],params[:friend],params[:button])
    @client.messages.create(
        from: '+14342605034', # this is the Flatiron School's Twilio number
        to: params[:phone_number],
        body: @message.create_message
        )
    erb :message2
  end 
  post '/tweet_results' do
    @user_search = Search.new(params[:hashtag])
    @user_hashtag = params[:hashtag]
    erb :tweet_results
	end

  
  post '/maps' do
    puts params
    @search = Maps.new(params[:city],params[:state], params.key("Locations_Near_Me"))
    erb :maps
  end 
  end 
  
  
