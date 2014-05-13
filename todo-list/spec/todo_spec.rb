require 'spec_helper'
require 'todo'

describe Task do
  it "Has title description status and timestamps " do
    expect(Task.new).to respond_to(:description, :status, :title, :created_at)
  end

  it "Has a status of incomplete when initialized" do
    expect(Task.new.status).to eq("incomplete")
  end

  it "Has an accurate created_at time down to the sec" do
    expect(Task.new.created_at.sec).to eq(Time.now.sec)
  end
end
