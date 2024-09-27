class View
  def welcome_message
    puts "Welcome to Amenitiz Cash Register!"
    puts "-----------------------------------"
  end

  def show_products(store)
    puts "In our store today:"
    store.each do |code, info|
      puts "#{info[:name]} (#{code}): #{info[:price]}€"
    end
    puts "-----------------------------------"
  end

  def get_item_input
    puts "Which item code? (or 'quit' to checkout)"
    gets.chomp.upcase
  end

  def show_cart(cart, store, total)
    if cart.items.empty?
      puts "Your cart is empty!"
    else
      puts "\nYour cart:"
      cart.items.each do |item_code, quantity|
        item_name = store[item_code][:name]
        puts "#{item_name} (x#{quantity})"
      end
      puts "--------------------"
      puts "Total bill: #{total.round(2)}€"
    end
  end
end
