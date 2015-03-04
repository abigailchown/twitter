require "open-uri"

url = URI('https://www.google.co.uk/?#q=space')

response = open(url).read
puts response
