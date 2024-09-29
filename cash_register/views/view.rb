class View
  def welcome_message
    puts "Welcome to Amenitiz Cash Register!"
    puts "-----------------------------------"
  end

  # Generic method for displaying messages
  def display_message(message)
    puts message
  end

  # Display the main menu options
  def display_menu
    puts "\nPlease select an option:"
    puts "A. View Available Products"
    puts "B. View Discounts"
    puts "C. Shop (Add Products to Basket)"
    puts "D. Checkout"
    puts "E. Exit"
    gets.chomp.upcase
  end

  # Show available products
  def show_products(store)
    puts "In our store today:"
    store.each do |code, info|
      puts "#{info[:name]} (#{code}): #{info[:price]}€"
    end
    puts "-----------------------------------"
  end

  # Show available discounts
  def show_discounts
    puts "Discounts currently available:"
    puts "- Buy-one-get-one-free on Green Tea (GR1)"
    puts "- Strawberries (SR1): 4.50€ each when you buy 3 or more"
    puts "- Coffee (CF1): 2/3 price discount when you buy 3 or more"
    puts "-----------------------------------"
  end

  # Get the user's input for adding items to the cart
  def get_item_input
    puts "Which item code? (or 'quit' to stop adding items)"
    gets.chomp.upcase
  end

  # Show the cart contents (for shopping) without calculating total
  def show_cart(cart, store)
    if cart.items.empty?
      puts "Your cart is empty!"
    else
      puts "\nYour current cart:"
      cart.items.each do |item_code, quantity|
        item_name = store[item_code][:name]
        pluralized_name = quantity == 1 || item_name.end_with?("s") ? item_name : "#{item_name}s"
        puts "#{pluralized_name} (x#{quantity})"
      end
    end
  end

  # Show final cart contents and total bill during checkout
  def show_final_cart(cart, store, total)
    if cart.items.empty?
      puts "Your cart is empty!"
    else
      puts "\nYour cart:"
      cart.items.each do |item_code, quantity|
        item_name = store[item_code][:name]
        pluralized_name = quantity == 1 || item_name.end_with?("s") ? item_name : "#{item_name}s"
        puts "#{pluralized_name} (x#{quantity})"
      end
      puts "--------------------"
      puts "Total bill: #{total.round(2)}€"
    end
  end

  # Display exit message
  def exit_message
    puts "Thank you for shopping with us! Goodbye."
  end
end
