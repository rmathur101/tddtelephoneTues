require 'spec_helper'
require 'pizza'

describe "Pizza model" do
  let(:pizza) { Pizza.new }

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

  it "has method: #required_bake_time" do
    expect(pizza).to respond_to(:required_bake_time)
  end


end
