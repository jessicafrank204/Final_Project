require 'uri'

class Search
  
	attr_accessor :client

	def initialize(hashtag)
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key = 'tGOKnItpbtrv3Yw4sEiQ2ULuB'
		  config.consumer_secret ='OEkmDdaG8f5BERjXyiDuFsZB8IagX215hbYG5yLyWnAj7ue4Pe'
		  config.access_token =	'3422246944-Gx2ax4NnQ3bVAz0wGenXgDi026TK8lMnqRhfkVs'
		  config.access_token_secret = 'cilAt91NZ0Ofo7Qji8ofcX0aYFCH4z33NOwLrJJGHaT5N'
     @hashtag = hashtag 
    end
  end
  
  def request
    my_uri = "https://api.twitter.com/1.1/search/tweets.json?q=%23#{@hashtag}" #converts the string to a URI - same thing basically as a url 
    results = open(my_uri) #making a get request to the server AND returning the results as a JSON file
    results2 = JASON.parse(results) #parsing the jason called results - splits the jason into a hash
    puts "THIS ISSSSSSSSS #{results2}"
#     results[:tweets]
    
  end
  
    

  	
end 



