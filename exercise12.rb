fav_colours = ["Yellow", "Green", "Blue", "Red", "Black", "White", "Purple"]

fav_artists = ["Rolling Stones", "Roger Waters", "Sade", "Bon Jovi", "Coldplay", "Ramones", "Pink Floyd"]
new_merged_array = []
new_merged_array << fav_colours
new_merged_array << fav_artists
new_merged_array.flatten!

new_merged_array.sort!
