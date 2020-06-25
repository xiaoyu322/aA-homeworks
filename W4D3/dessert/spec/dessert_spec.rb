require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:apple_pie) {Dessert.new("apple_pie", 100, chef)}

  describe "#initialize" do
    it "sets a type"
      expect(apple_pie.type).to eq("apple_pie")
    end
    it "sets a quantity"
      expect(apple_pie.quantity).to eq(100)
    end
    it "starts ingredients as an empty array"
      expect(apple_pie.ingredient).to eq([])
    end
    it "raises an argument error when given a non-integer quantity"
      expect {Dessert.new("apple_pie", 10.5, chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
      apple_pie.add_ingredient("apple")
      expect(apple_pie.ingredient).to include("apple")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
      ingredient = ["egg", "flour", "apple"]
      ingredient.shuffle
      expect(apple_pie.ingredient).not_to eq(ingredient)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"
      apple_pie.eat(40)
      expect(apple_pie.eat).to eq(60)
    end

    it "raises an error if the amount is greater than the quantity"
      expect {eat(1000)}.to raise_error(ArgumentError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
      allow(chef).to receive(:titleize).and_return("Chef Gordon")
      expect(apple_pie.serve).to eq("Chef Gordon has made 100 apple_pies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
      expect(chef)to receive(:bake).with(apple_pie)
      apple_pie.make_more
    end 
  end
end
