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


puts "How many pizzas de you want to order?"
quantity_number = gets.chomp.to_i


quantity = quantity_array(quantity_number)

puts quantity.inspect
