require 'grammar_stats'

RSpec.describe 'checking grammar' do
    it 'checking the check method for if the first word is capitalised' do
        grammar = GrammarStats.new
        expect(grammar.check('Hello Tauqeer.')).to eq true
    end
    it 'input hello tauqeer, expect false' do
        grammar = GrammarStats.new
        expect(grammar.check('hello tauqeer')).to eq false
    end
    it 'input wrong string, expect 0' do
        grammar = GrammarStats.new
        grammar.check('hello tauqeer')
        expect(grammar.percentage_good).to eq 0
    end
    it 'input 2 wrong strings, expect 0' do
        grammar = GrammarStats.new
        grammar.check('hello tauqeer')
        expect(grammar.percentage_good).to eq 0
    end
    it 'input correct string, expect 100' do
        grammar = GrammarStats.new
        grammar.check('Hello Tauqeer.')
        expect(grammar.percentage_good).to eq 100
    end
    it 'input one good string, one wrong string, expect 50' do
        grammar = GrammarStats.new
        grammar.check('Hello Tauqeer.')
        grammar.check('Hello Tauqeer')
        expect(grammar.percentage_good).to eq 50
    end
    it 'input 2 good strings, one wrong string, expect 50' do
        grammar = GrammarStats.new
        grammar.check('Hello Tauqeer.')
        grammar.check('Hello Tauqeer')
        grammar.check('Hello Khadija.')
        expect(grammar.percentage_good).to eq 67
    end
    it 'input one good string, four wrong string, expect 50' do
        grammar = GrammarStats.new
        grammar.check('Hello Tauqeer.')
        grammar.check('Hello Tauqeer')
        grammar.check('Hello Khadija')
        grammar.check('Hello Khadija')
        expect(grammar.percentage_good).to eq 25
    end
    
end