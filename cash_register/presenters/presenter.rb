class Presenter
  def initialize(view, cart, pricing_rules, store)
    @view = view
    @cart = cart
    @pricing_rules = pricing_rules
    @store = store
  end

  def run
    @view.welcome_message
    @view.show_products(@store)

    the_item = ""
    until the_item == "QUIT"
      the_item = @view.get_item_input

      if @store.key?(the_item)
        @cart.add_item(the_item)
      elsif the_item != "QUIT"
        puts "Sorry, we don't have this item in store today."
      end
    end

    total = @cart.total_price(@pricing_rules)
    @view.show_cart(@cart, @store, total)
  end
end
