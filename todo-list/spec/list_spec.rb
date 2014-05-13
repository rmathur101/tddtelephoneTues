require 'spec_helper'
require 'todo'


describe List do
  it "has a title and tasks" do
    expect(List.new).to respond_to(:title, :tasks)
  end

  it "Can have tasks added" do
    task = Task.new
    list = List.new.add_task(task)
    expect(list.last).to eq(task)
  end

  it "Can have all tasks completed" do
    list = List.new
    list.complete_all!
    list.tasks.each do |task|
      expect(task.complete?).to eq(true)
    end
  end


end
# - A todo list should have a title
# - A todo list has many tasks
