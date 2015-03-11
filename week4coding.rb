require "open-uri"
require 'JSON'



queryString = ARGV[0]

if queryString == nil
	queryString = 'space'
end

query_url = "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q=#{queryString}"
puts query_url
puts queryString

json = JSON.parse(open(query_url).read)

url = json["responseData"]["results"][0]

puts url