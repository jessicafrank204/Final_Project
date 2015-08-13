# require 'net/http'
# uri = URI('https://data.guidestar.org/v1/advancedsearch?q=ein:54-1774039')

# Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https', :verify_mode => OpenSSL::SSL::VERIFY_NONE) do |http| 
#   request = Net::HTTP::Get.new uri.request_uri
#   request.basic_auth 'username' 'password'
#   response = http.request request # Net::HTTPResponse object 
#   puts response.body 
# end 