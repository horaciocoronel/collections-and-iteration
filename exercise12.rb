fav_colours = ["Yellow", "Green", "Blue", "Red", "Black", "White", "Purple"]

fav_artists = ["Rolling Stones", "Roger Waters", "Sade", "Bon Jovi", "Coldplay", "Ramones", "Pink Floyd"]
new_merged_array = []
new_merged_array << fav_colours
new_merged_array << fav_artists
new_merged_array.flatten!

new_merged_array.sort!

#Using the array of ages and the array of favourite artists, output a message for each pair of items. For example:

artists = ["U2", "Pink Floyd", "Armin Van Buuren", "Rolling Stones", "Coldplay"]
age = [33, 29, 16, 20, 25]

new_merged_array_age = {}

artists.each_with_index do |value, index|
  new_merged_array_age[value] = age[index]
end

new_merged_array_age.each do | k, v|
  puts "I <3 #{k} #{v}"
end
