require 'timer'

RSpec.describe 'timing reading speed' do
    it 'testing 0 words' do
        expect(timer(0)).to eq '0 minutes'
    end
    it 'testing under 200 words' do
        expect(timer(150)).to eq '1 minute'
    end
    it 'testing exactly 200 words' do
        expect(timer(200)).to eq '1 minute'
    end
    it 'testing over 200 words' do
        expect(timer(300)).to eq '2 minutes'
    end
end