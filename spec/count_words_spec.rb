require 'count_words'

RSpec.describe 'counting words in a string' do
    it "counts empty string" do
        expect(count_words('')).to eq 0
    end
    it "counts string with multiple words" do
        expect(count_words('Hello World')).to eq 2
    end
end