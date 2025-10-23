require 'net/http'
require 'json'


# ask user for a pokemon name
puts "Please enter the name of your favorite pokemon:"

# store the name in a variable
name = gets.chomp

# then fetch information about that pokemon
uri = URI("https://pokeapi.co/api/v2/pokemon/#{name}")
response = Net::HTTP.get(uri)

if response == "Not Found"
  puts "Pokemon not found. Try again"
  return
else
  data = JSON.parse(response)
  # print information (eg image url front_shiny)
  puts data.dig("sprites","front_shiny")
end
