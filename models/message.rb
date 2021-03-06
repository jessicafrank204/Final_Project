

class Message
  attr_accessor :name, :friend, :button, :final_message
  
  def initialize(name, friend, button)
   # this creates a new connection to the Twilio API
  
  # this creates a message and sends it out via Twilio

    @name=name.upcase
    @friend=friend.upcase
    @button=button
    @final_message=""
    @appearance = ["You are a very beautiful human being", "I love the way you dress", "Do you have an inhaler because you take my breath away" ]
    @personality = ["You are a very funny person", "You are a great person to be around", "Being with you brightens my day"]
    @future = ["You have an amazing future ahead of you", "Everything will be up hill from here", "I'm astonished by all the success you will have in the future" ]
    @number=rand(3)
    
  end 
  def create_message
    
    if @button=='Compliment Appearance'
      @final_message = "From: #{@name}  To: #{@friend} #{@appearance[@number]} (generated by the-helping-hands.herokuapp.com)"
      return @final_message
    elsif @button=='Praise Personality'
      @final_message = "From: #{@name}  To: #{@friend} #{@personality[@number]} (generated by the-helping-hands.herokuapp.com)" 
      return @final_message
    elsif @button=='Destined for Greatness'
      @final_message = "From: #{@name}  To: #{@friend} #{@future[@number]}  (generated by the-helping-hands.herokuapp.com)"
      return @final_message
    else 
      puts "error"
    end
  end 


end 