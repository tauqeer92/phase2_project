require 'music'

RSpec.describe 'keep track of music listened to' do
    it 'checking if 1 song added' do
        first_song = Music.new
        first_song.add('Beyonce - Hello')
        expect(first_song.list).to eq ['Beyonce - Hello']
    end
    it 'checking if 2 songs added' do
        first_song = Music.new
        first_song.add('Beyonce - Hello')
        first_song.add('Jayz - World')
        expect(first_song.list).to eq ['Beyonce - Hello', 'Jayz - World']
    end
    it 'checking if error gets raised if string empty' do
        first_song = Music.new
        expect {first_song.add('')}. to raise_error 'Input empty'
    end

end