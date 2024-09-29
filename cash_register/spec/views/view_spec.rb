require_relative '../../views/view'

RSpec.describe View do
  let(:store) do
    {
      "GR1" => { name: "Green Tea", price: 3.11 },
      "SR1" => { name: "Strawberries", price: 5.00 },
      "CF1" => { name: "Coffee", price: 11.23 }
    }
  end

  let(:cart) { double("Cart", items: { "GR1" => 2, "SR1" => 1 }) }
  let(:view) { View.new }

  describe "#show_products" do
    it "displays the list of products in the store" do
      expect { view.show_products(store) }.to output(
        "In our store today:\nGreen Tea (GR1): 3.11€\nStrawberries (SR1): 5.0€\nCoffee (CF1): 11.23€\n-----------------------------------\n"
      ).to_stdout
    end
  end

  describe "#display_message" do
    it "displays a message to the user" do
      expect { view.display_message("Test message") }.to output("Test message\n").to_stdout
    end
  end

  describe "#show_cart" do
    it "displays the items in the cart" do
      expect { view.show_cart(cart, store) }.to output(
        "\nYour current cart:\nGreen Teas (x2)\nStrawberries (x1)\n"
      ).to_stdout
    end
  end
end
