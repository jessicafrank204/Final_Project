apperance = ["You are a very beautiful human being", "I love the way you dress", ]
personality = ["You are a very funny person", "You are a great person to be around", "Being with you brightens my day"]
future = ["You have an amazing future ahead of you", "Everything will be up hill from here", "I'm astonished by all the success you will have in the future" ]

class Message
  attr_accessor :name, :friend
  def initialize(name, friend)
    @name=name.upcase
    @friend=friend.upcase
  end 
  def create_message
     "From: #{@name}  To: #{@friend}"
  end 
end 