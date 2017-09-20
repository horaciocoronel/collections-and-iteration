############### Exercise 0 ###############

############### CREATE ARRAYS ################
fav_colours = ["red", "blue", "orange", "yellow", "purple"]
age = [33, 29, 16, 20, 25]
coin = ["Heads", "Tails", "Tails", "Heads", "Tails"]
artists = ["U2", "Pink Floyd", "Armin Van Buuren"]
fav_colours_symbols = [:red, :blue, :orange, :yellow, :purple]

################ CREATE HASHES #################

words_definition = {
  :minute => "Measure of time",
  :cup => "Container that holds liquids",
  :dollar => "Currency"
}

movies = {
  :it => "2017",
  :titanic => "1999",
  :alien => "2016"
}

cities = {
  :toronto => "2,615,009",
  :paris => "2,241,346",
  :rome => "2,869,461"
}

family = {
  :maria => "30",
  :laura => "20",
  :carl => "10",
  :luis => "15"
}

############### Exercise 1 ###############

puts coin

puts fav_colours[0]

puts age.sort # puts age.sort.reverse

age << "0" #puts age

puts movies[:it]

############### Exercise 2 ###############

puts fav_colours[-1]

cities[:london] = "8.788.000" #puts cities

puts coin.reverse!

puts cities[:toronto]

artists.each do |artist|
  puts "I think #{artist} is great."
end
