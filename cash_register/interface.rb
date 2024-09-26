require_relative 'pluralise'

puts "Welcome to Instacart"
puts "--------------------------"

store = {
  "GR1" => { name: "Green Tea", price: 3.11 },
  "SR1" => { name: "Strawberries", price: 5.00 },
  "CF1" => { name: "Coffee", price: 11.23 }
}

cart = Hash.new(0)
the_item = ""

puts "In our store today:"
store.each do |code, info|
  puts "#{info[:name]} (#{code}): #{info[:price]}€"
end

puts "--------------------"

until the_item == "QUIT"
  puts "Which item code? (or 'quit' to checkout)"
  the_item = gets.chomp.upcase

  if the_item == "QUIT"
    break
  elsif store.key?(the_item)
    cart[the_item] += 1
    puts "#{store[the_item][:name]} added to your cart."
  else
    puts "Sorry, we don't have this item in store today."
  end
end

if cart.empty?
  puts "Your cart is empty!"
else
  total = 0
  puts "\nYour cart:"
  cart.each do |item_code, quantity|
    item_name = store[item_code][:name]
    item_price = store[item_code][:price]

    if item_code == "GR1"
      free_items = quantity / 2
      paid_items = quantity - free_items
      subtotal = paid_items * item_price
    elsif item_code == "SR1"
      if quantity >= 3
        subtotal = quantity * 4.50
      else
        subtotal = quantity * item_price
      end
    elsif item_code == "CF1"
      if quantity >= 3
        discounted_price = item_price * (2.0 / 3.0)
        subtotal = quantity * discounted_price
      else
        subtotal = quantity * item_price
      end
    else
      subtotal = quantity * item_price
    end
    total += subtotal
    puts "#{item_name} (x#{quantity}): #{subtotal.round(2)}€"
  end

  puts "--------------------"
  puts "Total bill: #{total.round(2)}€"
end
