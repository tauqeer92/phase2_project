class TodoList
  def initialize
    @list = []
  end

  def add(todo) 
    @list << todo

    # todo is an instance of Todo
    # Returns nothing
  end

  def list
    @list 
  end


  def incomplete
    @list.map.select {|todo|
  todo if todo.done? == false}
    
    # Returns all non-done todos
  end

  def complete
    @list.map.select {|todo|
  todo if todo.done? == true }
    # Returns all complete todos
  end

  def give_up!
    @list.map { |todo|
    todo.mark_done!
    }
    # Marks all todos as complete
  end
end