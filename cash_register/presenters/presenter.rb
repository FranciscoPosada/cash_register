class Presenter
  def initialize(view, cart, pricing_rules, store)
    @view = view
    @cart = cart
    @pricing_rules = pricing_rules
    @store = store
  end

  def run
    @view.welcome_message

    loop do
      user_choice = @view.display_menu

      case user_choice
      when 'A'
        @view.show_products(@store) # View products
      when 'B'
        @view.show_discounts         # View available discounts
      when 'C'
        handle_shopping              # Shopping process (add products)
      when 'D'
        handle_checkout              # Checkout process (finalize purchase)
      when 'E'
        @view.exit_message           # Exit
        break                        # Break the loop to exit the program
      else
        puts "Invalid option, please try again."
      end
    end
  end

  private

  def handle_shopping
    loop do
      @view.show_products(@store)     # Show products to user during shopping
      the_item = @view.get_item_input # Get input

      break if the_item == "QUIT"     # Stop adding items when user types 'quit'

      if @store.key?(the_item)
        @cart.add_item(the_item)      # Add item to cart
        puts "#{@store[the_item][:name]} added to your cart."
        @view.show_cart(@cart, @store) # Show current cart after adding an item
      else
        puts "Sorry, we don't have this item in store today."
      end
    end
  end

  def handle_checkout
    if @cart.items.empty?
      puts "Your cart is empty! Please shop first."
    else
      total = @cart.total_price(@pricing_rules)
      @view.show_final_cart(@cart, @store, total) # Show final cart with total during checkout
    end
  end
end
