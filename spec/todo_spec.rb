require 'todo'
RSpec.describe 'checking for #todo' do
    it 'checking empty string' do
        expect(todo('')).to eq false
    end
    it 'input #todo, return true' do
        expect(todo('#TODO')).to eq true
    end
    it 'input Hello#TODOTauqeer, return true' do
        expect(todo('Hello#TODOTauqeer')).to eq true
    end
    it 'input Hello, return false' do
        expect(todo('Hello')).to eq false
    end
    
end