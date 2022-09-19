require 'letter_counter'

RSpec.describe 'counting letters' do
    it 'input Digital Punk, expect [2, i]' do
        counter = LetterCounter.new("Digital Punk")
        expect(counter.calculate_most_common).to eq [2, "i"]
    end
    it 'input aaa bb, expect [3, a]' do
        counter = LetterCounter.new("aaa bb")
        expect(counter.calculate_most_common).to eq [3, "a"]
    end
    it 'input aa bb, expect [2, a]' do
        counter = LetterCounter.new("aa bb")
        expect(counter.calculate_most_common).to eq [2, "a"]
    end
end