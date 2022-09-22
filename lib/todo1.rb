class Todo
  def initialize(task) # task is a string
    @todo = task
    @done = false
  end

  def task
    @todo 
  end

  def mark_done!
    @done = true
    # Marks the todo as done
    # Returns nothing
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    @done
  end
end

#one = Todo.new('Work')

#one.task

#one.mark_done! 