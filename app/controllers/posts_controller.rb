class PostsController < ApplicationController
	require 'net/http'

	def index
	end


 
    def convert_currency(from_curr = "INR", to_curr = "USD", amount = 1000)
    host = "www.google.com"
    http = Net::HTTP.new(host, 80)
    url = "/finance/converter?a=#{amount}&from=#{from_curr}&to=#{to_curr}"
    response = http.get(url)
    # puts response.body
    result = response.body
    regexp = Regexp.new("(\\d+\\.{0,1}\\d*)\\s+#{to_curr}")
    regexp.match result
    return $1.to_f
    end
 
    
end
