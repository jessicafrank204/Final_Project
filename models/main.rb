# require 'net/http' 
# uri = URI('https://data.guidestar.org/v1/charitycheck/54-1774039')

# Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http| 
#   request = Net::HTTP::Get.new uri.request_uri
#   request.basic_auth 'a4a79fb77a5646c2bde17cd0dc9956b1'
  
#   response = http.request request # Net::HTTPResponse object 

#   puts response.body 
# end 