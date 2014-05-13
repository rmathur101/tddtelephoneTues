#write code here
class List
  attr_reader :tasks, :title
  def initialize
    @tasks = []
  end
  def add_task(task)
    @tasks << task
  end

  def complete_all!
    @tasks.each do |task|
      task.mark_as_complete!
    end
  end


end
class Task

  attr_reader :description, :status, :title, :created_at
  def initialize
      super
    @status = "incomplete"
    @created_at = Time.now
  end

  def mark_as_complete!
    @status = "complete"
  end

  def mark_as_incomplete!
    @status = "incomplete"
  end

  def complete?
    if @status == "complete"
      true
    else @status == "incomplete"
      false
    end
  end
end



