quantity = []
toppings = []

def quantity_array(num_pizza)
  quantity_number = []
  if num_pizza >= 1
  num_pizza.times do | i |
    quantity_number << i += 1
  end
  quantity_number.inspect
  end
end


def ask_for_toppings(toppings)
  toppings_quantity = []
  pizza_num= 0
  if toppings >= 0
    toppings.times do
    puts "How many toppings do you want on pizza #{pizza_num+=1} "
    toppings_quantity << gets.chomp.to_i
    puts "You have ordered a pizza with " + toppings_quantity[-1].to_s + " toppings!"
    end
    toppings_quantity.inspect
  end
end

puts "How many pizzas do you want to order?"
quantity_number = gets.chomp.to_i
quantity = quantity_array(quantity_number)

#puts quantity.inspect

toppings = ask_for_toppings(quantity_number)


#puts toppings.inspect
