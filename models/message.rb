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