require 'spec_helper'
require 'todo'

describe Task do
  it "Has title description status and timestamps " do
    expect(Task.new).to respond_to(:description, :status, :title, :timestamps)
  end
end
