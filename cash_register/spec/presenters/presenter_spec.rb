require_relative '../../presenters/presenter'
require_relative '../../models/cart'
require_relative '../../models/pricing_rules'

RSpec.describe Presenter do
  let(:view) { double("View") }
  let(:cart) { Cart.new }
  let(:store) do
    {
      "GR1" => { name: "Green Tea", price: 3.11 },
      "SR1" => { name: "Strawberries", price: 5.00 },
      "CF1" => { name: "Coffee", price: 11.23 }
    }
  end
  let(:pricing_rules) { PricingRules.new(store) }
  let(:presenter) { Presenter.new(view, cart, pricing_rules, store) }

  context "when shopping and checking out" do
    it "adds an item and checks out" do
      allow(view).to receive(:welcome_message)
      allow(view).to receive(:display_menu).and_return('C', 'D')
      allow(view).to receive(:show_products)
      allow(view).to receive(:get_item_input).and_return('GR1', 'QUIT')
      expect(view).to receive(:show_cart).with(cart, store)
      expect(view).to receive(:show_final_cart)

      presenter.run

      expect(cart.items["GR1"]).to eq(1)
    end
  end
end
