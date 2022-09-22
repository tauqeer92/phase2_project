require 'todo1'

RSpec.describe "Todo" do
  context "inputting tasks into our to do list" do
    it "returns blank if nothing is input" do
      todo = Todo.new(" ")
      expect(todo.task).to eq " "
    end  
  end

    it "returns a string" do
      todo = Todo.new("work")
      expect(todo.task).to eq "work"
  end

    it "returns true if task is marked done" do
      todo = Todo.new("work")
      todo.mark_done!
      expect(todo.done?).to eq true
    end

    it "returns false if task is not marked as done" do
      todo = Todo.new("work")
      expect(todo.done?).to eq false
    end


end