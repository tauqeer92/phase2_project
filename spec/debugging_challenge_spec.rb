require 'debugging_challenge'

RSpec.describe 'debugging' do
    it 'input the roof, the roof, the roof is on fire!, expect o' do
        expect(get_most_common_letter("the roof, the roof, the roof is on fire!")).to eq 'o'
    end
    it 'aa bbbbbb cc ff dds w, expect b' do
        expect(get_most_common_letter("aa bbbbbb cc ff dds w, expect b")).to eq 'b'
    end
end