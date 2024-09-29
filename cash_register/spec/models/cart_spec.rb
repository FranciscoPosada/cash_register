require_relative '../../models/cart'

RSpec.describe Cart do
  let(:cart) { Cart.new }

  context "when a new cart is created" do
    it "is empty" do
      expect(cart.items).to be_empty
    end
  end

  context "when items are added" do
    it "adds items to the cart" do
      cart.add_item("GR1")
      expect(cart.items["GR1"]).to eq(1)

      cart.add_item("GR1")
      expect(cart.items["GR1"]).to eq(2)
    end
  end
end
