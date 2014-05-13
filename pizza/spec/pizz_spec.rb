require 'spec_helper'
require 'pizza'

describe "Pizza model" do
  let(:pizza) { Pizza.new("name") }

  it "should have attribute name that is initalized to 'name'"  do
    expect(pizza.name).to eq("name")
  end
  it "should have attribute time_baked initialzed to 0" do
    expect(pizza.time_baked).to eq(0)
  end

  it "should have two other attributes description and time_baked not intitialized" do
    expect(pizza).to respond_to(:description)
  end

  it "should have many toppings (data structure is array)"  do
    expect(pizza).to respond_to(:toppings)
  end

  #before filter is there a way to do this just with let?
  before(:each) do
    pizza.toppings = [Topping.new("Tomato", 10), Topping.new("Onion", 20), Topping.new("Mushroom", 5), Topping.new("Sausage", 40)]
  end


  describe "method #required_bake_time" do
    it "should return sum of 900 and the maximum bake time of all its toppings" do
      expect(pizza.required_bake_time).to eq(940)
    end
  end

  describe 'method #bake(time)' do
    it "should increment time_baked by integer time and invokes bake(time) on all of its toppings" do
      pizza.bake(10)
      expect(pizza.time_baked).to eq(10)
      expect(pizza.toppings.first.time_baked).to eq(10)
      expect(pizza.toppings.last.time_baked).to eq(10)
    end
  end

  describe 'method baked' do
    it "should return a boolean indiciating whether the pizza and its toppings have finished baking or not" do
    pizza.bake(950)
    expect(pizza.baked?).to eq(true)

    end
  end

  describe 'method finished_toppings' do
    it "should return array of finished toppings" do
      pizza.bake(15)
      expect(pizza.finished_toppings).to eq(["Tomato", "Mushroom"])
    end
  end

  describe 'method unfinished_toppings' do
    it "should return array of unfinished toppings" do
      pizza.bake(35)
      expect(pizza.unfinished_toppings).to eq(["Sausage"])
    end
  end

end

describe "Topping Class" do
  let(:topping) {Topping.new("name", 20)}

  it "should have attributes 'name', 'required_bake_time', 'time_baked'" do
    expect(topping).to respond_to(:name)
    expect(topping).to respond_to(:required_bake_time)
    expect(topping).to respond_to(:time_baked)
  end

  it "should be initialized with name attribute 'name'" do
    expect(topping.name).to eq("name")
  end

  it "should be initialized with required_bake_time (integer)" do
    expect(topping.required_bake_time).to be_a_kind_of(Fixnum)
  end

  describe 'bake(time)' do
    it "should increment time_baked by the interger argument time" do
      topping.bake(10)
      expect(topping.time_baked).to eq(10)
    end
  end

  describe 'baked?' do
    it "should return a boolean indicates whether time_baked >= required_bake_time" do
      topping.bake(20)
      expect(topping.baked?).to eq(true)
    end
  end


end








