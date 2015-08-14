
class Search
  
	attr_accessor :client

	def initialize(hashtag)
		@client = Twitter::REST::Client.new do |config|
		  config.consumer_key = 'tGOKnItpbtrv3Yw4sEiQ2ULuB'
		  config.consumer_secret ='OEkmDdaG8f5BERjXyiDuFsZB8IagX215hbYG5yLyWnAj7ue4Pe'
		  config.access_token =	'3422246944-Gx2ax4NnQ3bVAz0wGenXgDi026TK8lMnqRhfkVs'
		  config.access_token_secret = 'cilAt91NZ0Ofo7Qji8ofcX0aYFCH4z33NOwLrJJGHaT5N'
		end
    @hashtag = hashtag 
  end 
  	
end 



