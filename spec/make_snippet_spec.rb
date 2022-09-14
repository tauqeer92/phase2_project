require 'make_snippet'

RSpec.describe 'adding ... after first 5 characters' do
    it 'testing empty string' do
      result = make_snippet('')
      expect(result).to eq ''
    end
    it 'returns snippet if only 1 word long' do
      result = make_snippet('Hello')
      expect(result).to eq 'Hello'
    end
    it 'returns snippet if only 1 word long but less than 5 words long' do
        result = make_snippet('Hello World My Name')
        expect(result).to eq 'Hello World My Name'
    end
    it 'adds ... to snippet exactly 5 words long' do
        result = make_snippet('Hello World My Name Is')
        expect(result).to eq 'Hello World My Name Is'
    end
    it 'adds ... to snippet longer than 5 words' do
        result = make_snippet("Hello World My Name Is Tauqeer Shoaib I'm Typing This")
        expect(result).to eq "Hello World My Name Is..."
    end
    it 'adds ... to string with special characters' do
        result = make_snippet("@@@ @@@ @@@ @@@ @@@@@ @@")
        expect(result).to eq "@@@ @@@ @@@ @@@ @@@@@..."
    end    
end

   # we need to add a test for words longer than 5 but shorter than 10
