require_relative '../../models/pricing_rules'

RSpec.describe PricingRules do
  let(:store) do
    {
      "GR1" => { name: "Green Tea", price: 3.11 },
      "SR1" => { name: "Strawberries", price: 5.00 },
      "CF1" => { name: "Coffee", price: 11.23 }
    }
  end

  let(:pricing_rules) { PricingRules.new(store) }

  context "when applying green tea buy-one-get-one-free rule" do
    it "applies the discount for two green teas" do
      price = pricing_rules.apply("GR1", 2)
      expect(price).to eq(3.11)
    end

    it "applies the discount for three green teas" do
      price = pricing_rules.apply("GR1", 3)
      expect(price).to eq(6.22)
    end
  end

  context "when applying strawberry bulk discount" do
    it "applies bulk discount when buying 3 or more" do
      price = pricing_rules.apply("SR1", 3)
      expect(price).to eq(13.50)
    end
  end

  context "when applying coffee discount" do
    it "applies discount when buying 3 or more coffees" do
      price = pricing_rules.apply("CF1", 3)
      expect(price).to eq(22.46)
    end
  end
end
