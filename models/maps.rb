class Maps
  def initialize(city, state, location)
    @city=city
    @state=state
    @location=location
    @search=""
  end 
  def make_search
    @search = "#{@location}+#{@city}+#{@state}"
    puts @search
    return @search
  end 
end 