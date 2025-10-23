require 'net/http'
require 'json'
uri = URI("https://jsonplaceholder.typicode.com/posts/")
response = Net::HTTP.get(uri)
data = JSON.parse(response)
puts data
