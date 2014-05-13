require 'spec_helper'

describe "Pizza model" do
  let(:pizza) { Pizza.new }

  it "should have attribute name that is initalized to 'name'"  do
    expect(pizza.name).to eq("name")
  end
end
