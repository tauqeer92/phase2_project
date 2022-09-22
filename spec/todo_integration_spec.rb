require 'todo_list'
require 'todo1'

RSpec.describe "integration testing" do
  context 'testing incomplete method' do
    it "returns all non-complete todos" do
      list = TodoList.new
      todo = Todo.new("work")
      list.add(todo)
      expect(list.incomplete).to eq [todo]
    end

    it "returns empty if all todos have been completed" do
      list = TodoList.new
      todo = Todo.new("work")
      list.add(todo)
      todo.mark_done!
      expect(list.incomplete).to eq []
    end

  context 'testing complete method' do
    it "returns complete todos" do
      list = TodoList.new
      todo = Todo.new("work")
      list.add(todo)
      todo.mark_done!
      expect(list.complete).to eq [todo]
  end
    it "returns empty if no todos completed" do
      list = TodoList.new
      todo = Todo.new("work")
      list.add(todo)
      expect(list.complete).to eq []
    end
    it "testing multiple todos, some complete/incomplete" do
      list = TodoList.new
      todo = Todo.new("work")
      todo1 = Todo.new("iron")
      todo.mark_done!
      list.add(todo)
      list.add(todo1)
      expect(list.complete).to eq [todo]
    end
end
  
  context 'testing give up method' do

    it "returns all todos as complete" do
      list = TodoList.new
      todo = Todo.new("work")
      todo1 = Todo.new("iron")
      list.add(todo)
      list.add(todo1)
      list.give_up!
      expect(list.complete).to eq [todo, todo1]
    end
  end
end
end