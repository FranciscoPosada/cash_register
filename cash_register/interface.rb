require_relative './models/product'
require_relative './models/cart'
require_relative './models/discounts'
require_relative './views/view'
require_relative './presenters/presenter'
require_relative './pluralise'

store = {
  "GR1" => { name: "Green Tea", price: 3.11 },
  "SR1" => { name: "Strawberries", price: 5.00 },
  "CF1" => { name: "Coffee", price: 11.23 }
}

view = View.new
cart = Cart.new
pricing_rules = PricingRules.new(store)

presenter = Presenter.new(view, cart, pricing_rules, store)
presenter.run
