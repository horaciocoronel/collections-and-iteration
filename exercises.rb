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
  :toronto => 2615009,
  :paris => 2241346,
  :rome => 2869461
}

family = {
  :maria => 30,
  :laura => 20,
  :carl => 10,
  :luis => 15
}

############### Exercise 1 ###############

## 1.1 ##
puts coin

## 1.2 ##
puts fav_colours[0]

## 1.3 ##
puts age.sort # puts age.sort.reverse

## 1.4 ##
age << 0 #puts age

## 1.5 ##
puts movies[:it]

############### Exercise 2 ###############

## 2.1 ##
puts fav_colours[-1]

last_item = fav_colours.length - 1
puts fav_colours[last_item]
puts fav_colours[fav_colours.length - 1]

## 2.2 ##
cities[:london] = 8788000 #puts cities

## 2.3 ##
puts coin.reverse!

## 2.4 ##
puts cities[:toronto]

## 2.5 ##
artists.each do |artist|
  puts "I think #{artist} is great!"
end
artists.each { |artist| puts "I think #{artist} is great"}

############### Exercise 3 ###############

## 3.1 ##
puts artists[0..1]
puts artists[0,2]

## 3.2 ##
movies.each do | movie_title, year |
  puts "#{movie_title} came out in #{year}"
end

## 3.3 ##
age.sort!
age.reverse!
## 3.3 - Option 2 ##
age.sort.reverse! #all in one line - applied two methods

## 3.4 ##
movies[:beauty_and_the_beast] = ["1991", "2017"]
puts movies

############### Exercise 4 ###############
## 4.1 ## FIRST APPROACH
family_younger_26 = family.select { |name, age|
  age.to_i < 26
}
puts family_younger_26

## 4.1 ###### Option 2 BETTER PERFORMANCE
puts family.select { |name, age|  age.to_i < 26 } #In one line

## 4.1 ## Option 3 SAFER, SLOWER
family.each do | name, age |
  if age < 26
    puts "#{name}, #{age}"
  end
end

## 4.2 ##
#Oldest person in my family (Array)
age.max
## 4.2 Option 2 ##
# different approach
oldest_person = age.sort.last

## 4.3 ##
# Finds last item in the array and substracts 1
oldest_person_position = age.length - 1
age[oldest_person_position]
age[age.length - 1]


#### 4.3 Option 2 - Generic form
side_count = 0
coin.each do | side |
  if side == "Heads"
    side_count += 1
  end
end
puts side_count

# 4.3 - Option 2 faster RUBIAN way
puts coin.count { | side |  side == "Heads" } #In one line

## 4.3 ## Option 3
side_count = coin.select { | side |  side == "Heads" }
puts side_count.length

## 4.4 ##
artists.delete_at(2)
puts artists

## 4.4 ## # different option for METHODS USE ()
artists.delete("U2")

### 4.5 [] Square brackets access saved elements in arrays/hashes
cities[2] = 2339092
puts cities

cities[:london] = 3488899

############### Exercise 5 ###############
## 5.1 ##
total_population = cities.values

sum = 0
total_population.each do |population|
  sum += population.to_i
 end

puts sum

## 5.1 Option 2 ### Different approach
sum = 0
cities.each do | city, people |
  sum += people
end
puts sum

### 5.2 ####
family.each do |name, age|
  if age.to_i > 25
    puts "#{name} is old."
  else
    puts "#{name} is young."
  end
end

## 5.2 ## Different approach
family_who_is_old = family.select { |name, age|  age > 25 }
family_who_is_old.each do | name |
  puts "#{name} is old."
end

family_who_is_young = family.select { |name, age|  age <= 25 }
family_who_is_young.each do | name |
  puts "#{name} is young."
end

## 5.2 ##
puts fav_colours.length
puts "#{fav_colours[-1]}, #{fav_colours[-2]}"

## 5.2 ## Option 2
puts fav_colours[fav_colours.length - 1]
puts fav_colours[fav_colours.length - 2]

## 5.4
new_array_age = []

age.each do | num |
 num += 1
 new_array_age << num
 end
age = new_array_age

## 5.4 ## TA Solution
index = 0

age.each do |num|
  num = num + 1
  age[index] = num
  index += 1
end
puts age

## 5.5 ##
fav_colours.concat(["black", "white"])
puts fav_colours

############### Exercise 6 ###############

## 6.1 ##
movies_by_year = {
  "1999" =>  ["The Matrix", "Star Wars: Episode 1", "The Mummy"],
  "2009" =>  ["Avatar", "Star Trek", "District 9"],
  "2019" =>  ["How to Train Your Dragon 3", "Toy Story 4", "Star Wars: Episode 9"]
}

## 6.2 ##

phone_buttons = [[1, 2, 3],[4, 5, 6], [7, 8, 9], ["*", "0", "#"]]

## 6.3 ##



### EXERCISE 6 B

## 6B.1 ##
20.times do
  puts "I will not skateboard in the halls"
end

## 6B.2 - Option 2##
message_repeated = []

20.times do
  message_repeated << "I will not skateboard in the halls"
end

## 6B.3 - ##
array_numbers = []
array_loop = 0
50.times do
  array_loop += 1
  array_numbers << array_loop
end

## 6B.4 ##
sum = 0
array_numbers.each do | num |
  sum += num
end
puts sum

## 6B.5 ##
array_numbers = []
array_loop = 0
50.times do
  array_loop += 1
  array_numbers << array_loop
  array_numbers << array_loop
  array_numbers << array_loop
end
## 6B.5 ## Better solution to 6.5
array_numbers = []
array_loop = 0
50.times do
  array_loop += 1
  3.times do
    array_numbers << array_loop
  end
end

## Exercise 7 ##
array_a = [3,44444,4444,55,5,56,6,6,6,6,423]
array_b = [13,322,4444,55,5,56,6,116,436,6,423]
def method_sum(amounts)
  sum_total = 0
  #expenses = [240, 1200, 120.4, 900, 1299]
  amounts.each do | amount |
    sum_total += amount
  end
  return sum_total
end

puts method_sum(array_a)
puts method_sum(array_b)

## Exercise 8 ##
grocery_list = ["salmon", "apples", "orange juice", "banana", "water", "milk"]

# You realize you've forgotten some rice, so add it to your list and output it again. Given that you've already output your list twice, it might be good to consider writing a method to do this. Putting frequently used chunks of code in a method lets you reuse them throughout your program without having to type them out over and over.
def list_items (item)
  item.each do | item |
    puts "* #{item}\n"
  end
end
grocery_list << "rice"

complete_list = list_items(grocery_list)

#You lost count of how many things you need to pick up. Better output the total number of items on your list.
puts complete_list.length


# Check to see if your list includes "bananas". If it does, output "You need to pick up bananas". Otherwise, output "You don't need to pick up bananas today".
grocery_list.select { | item |
  if item == 'banana'
    puts "You need to pick up bananas"
  elsif
    puts "You don't need to pick up bananas"
  end
}

# Display the second item in the list. (Don't forget that arrays indices start at zero!)
puts grocery_list[1]

# It turns out that everything in this grocery store you're visiting is stored alphabetically, so to better plan out what you need to buy you should sort your grocery list and output it with asterisks again.

list_items(grocery_list.sort)

# After looking everywhere, you can't find the salmon. Delete it from your list and redisplay the list one last time.
grocery_list.delete("salmon")
