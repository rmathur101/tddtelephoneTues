require 'spec_helper'

describe "Pizza model" do
  let(:pizza) { Pizza.new }

  it "should have attribute name that is initalized to 'name'"  do
    expect(pizza.name).to eq("name")
  end

  it "should have two other attributes description and time_baked not intitialized"
    expect(pizza.description).to be_nil
    expect(pizza.time_baked).to be_nil
end
