require 'task_tracker.rb'

RSpec.describe do
    it 'testing tracker method by adding one task' do
      one = TaskTracker.new
      one.add('hoover')
      expect(one.list).to eq ['hoover']
    end
    it 'testing tracker method by adding 2 tasks' do
        one = TaskTracker.new
        one.add('iron')
        one.add('hoover')
        expect(one.list).to eq ['iron', 'hoover']
    end
    it 'testing tracker method by adding 2 tasks' do
        one = TaskTracker.new
        one.add('iron')
        one.add('hoover')
        one.update_tracker('hoover')
        expect(one.list).to eq ['iron']
    end
end