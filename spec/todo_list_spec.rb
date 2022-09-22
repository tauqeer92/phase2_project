require 'todo_list'

RSpec.describe 'TodoList' do
    context 'inputting tasks instance into todolist' do
        it 'returns blank if nothings inputted' do
            todolist = TodoList.new
            expect(todolist.list).to eq []
        end
    end
end

