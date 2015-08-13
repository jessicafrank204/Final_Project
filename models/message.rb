

class Message
  attr_accessor :name, :friend, :button, :final_message
  
  
 
  
  def initialize(name, friend, button)
    @name=name
    @friend=friend
    @button=button
    @final_message=""
    @appearance = ["You are a very beautiful human being", "I love the way you dress" ]
    @personality = ["You are a very funny person", "You are a great person to be around", "Being with you brightens my day"]
    @future = ["You have an amazing future ahead of you", "Everything will be up hill from here", "I'm astonished by all the success you will have in the future" ]
  end 
  def create_message
    
    if @button=='Complient appearance'
      @final_message = "From: #{@name}  To: #{@friend} #{@appearance[rand(2)]}"
      return @final_message
    elsif @button=='Praise personality'
      @final_message = "From: #{@name}  To: #{@friend} #{@personality[rand(3)]}"
      return @final_message
    elsif @button=='Destined for greatness'
      @final_message = "From: #{@name}  To: #{@friend} #{@future[rand(3)]}"
      return @final_message
    else 
      puts "error"
    end
  
  end 
end 