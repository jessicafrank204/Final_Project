require 'uri'

class Search
  
	attr_accessor :client

	def initialize(hashtag)
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key = 'tGOKnItpbtrv3Yw4sEiQ2ULuB'
		  config.consumer_secret ='OEkmDdaG8f5BERjXyiDuFsZB8IagX215hbYG5yLyWnAj7ue4Pe'
		  config.access_token =	'3422246944-Gx2ax4NnQ3bVAz0wGenXgDi026TK8lMnqRhfkVs'
		  config.access_token_secret = 'cilAt91NZ0Ofo7Qji8ofcX0aYFCH4z33NOwLrJJGHaT5N'
      @final_tweets=[]
      @users=[]
      @profile_pic=[]
    end
     @hashtag = hashtag 
  end
  
  def request
    #puts @client.search(@hashtag).to_h.inspect
    @client.search(@hashtag).to_h[:statuses].each do |tweet| #there is a hash with the keys being statuses and search_metadata.  Statuses is an array of tweets; inside each tweet is a hash 
      @final_tweets.push("#{tweet[:text]}")      
    end

  @client.search(@hashtag).to_h[:statuses].each do |tweet| 
    @users.push("#{tweet[:user][:name]}")      
    end

  @final = Hash[@final_tweets.zip @users] #combines the two arrays into one hash
  return @final
  end
#       puts key
#    end 
    #puts @client.search(@hashtag).to_h.inspect
  
  #  @client.search(@hashtag)    #already in the twitter api, the search puts the hashtage in a string and makes that a uri and then calls search results method which parses the json and returns a hash
#     my_uri = "https://api.twitter.com/1.1/search/tweets.json?q=%23#{@hashtag}" #converts the string to a URI - same thing basically as a url - a uri is getting info from the server
#     results = open(my_uri) #making a get request to the server AND returning the results as a JSON file
#     results2 = JASON.parse(results) #parsing the jason called results - splits the jason into a hash
#     puts "THIS ISSSSSSSSS #{results2}"
# #     results[:tweets]
    


# def return_message
#   @final.key
# end

# def pics
#    @client.search(@hashtag).to_h[:statuses].each do |tweet| 
#    @profile_pic.push("#{tweet[:profile_image_url]}<br><br>") 
# end
# return @profile_pic
# end
  
    

  	
end 



