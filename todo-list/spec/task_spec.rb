require 'spec_helper'
require 'todo'

describe Task do
  context "#attributes" do
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

  context "#methods" do


    it "Has a method that marks status as complete" do
      task = Task.new
      task.mark_as_complete!
      expect(task.status).to eq("complete")
    end

    it "Has a method that marks status as incomplete" do
      task = Task.new
      task.mark_as_incomplete!
      expect(task.status).to eq("incomplete")
    end

    it "will tell you false when task is incomplete" do
      expect(Task.new.complete?).to eq(false)
    end

    it "Will tell you true when task is complete" do
      task = Task.new
      task.mark_as_complete!
      expect(task.complete?).to eq(true)
    end
  end


end
