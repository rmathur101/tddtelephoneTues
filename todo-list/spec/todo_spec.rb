require 'spec_helper'


describe Task do
  it "Has title description status and timestamps " do
    task = Task.new
      expect(task.description).to be_true
      expect(task.status).to be_true
      expect(task.title).to be_true
      expect(task.timestamps).to be_true
  end
end
