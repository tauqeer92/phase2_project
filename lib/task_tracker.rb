class TaskTracker
  def initialize
    @array = []
    
  end

  def add(task)
    @array.push(task)
    
  end

  def update_tracker(completed_task)
    @array.delete(completed_task)
  end

  def list
    return @array
  end

end

