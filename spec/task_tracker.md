1. Describe the Problem

I need a method to add todo tasks to a list

I need a method to remove a task from the list and reference that it's been completed

2. Design the Class Interface

The interface of a class includes:

class TaskTracker
def initialiser(task)
  @array = []
  
  
end

def add(task)
  @array.push(task)
end

def update_tracker(completed_task)
 puts "This task is completed + #{completed_task}"
 array.remove(completed_task)
 return array
end

def list
    return @array
end

The design of its public methods, including:
Their names and purposes
What parameters they take and the data types.
What they return and that data type
Any other side effects they might have.
Steps 3 and 4 then operate as a cycle.

3. Create Examples as Tests

one = TaskTracker.new('Hoover')

one.tracker

one.update_tracker('hoover')



4. Implement the Behaviour