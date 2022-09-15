require 'grammar'
RSpec.describe 'checking first character uppercase and punctuation at the end' do
    it 'correct first character with full stop at end' do
      expect(grammar('Hello Tauqeer.')).to eq true
    end
    it 'correct first character with exclamation at end' do
        expect(grammar('Hello Tauqeer!')).to eq true
    end
    it 'correct first character with question mark at end' do
        expect(grammar('Hello Tauqeer?')).to eq true
    end
    it 'correct first character, wrong punctuation' do
        expect(grammar('Hello Tauqeer,')).to eq false
    end
    it 'wrong first character, wrong punctuation' do
        expect(grammar('hello Tauqeer,')).to eq false
    end
    it 'correct first character, no punctuation' do
        expect(grammar('Hello Tauqeer')).to eq false
    end
    it 'fails' do
      expect { grammar('') }.to raise_error "Not a sentence."
    end
end