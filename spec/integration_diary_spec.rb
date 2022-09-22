require 'diary'
require 'diary_entry'
RSpec.describe 'testing diary class' do
    it 'testing the all method' do
        diary = Diary.new
        diary_entry = DiaryEntry.new('Diary', 'This is contents')
        diary_entry1 = DiaryEntry.new('Diary1', 'This is contents1')
        diary.add(diary_entry)
        diary.add(diary_entry1)
        expect(diary.all).to eq [diary_entry, diary_entry1]
    end
    describe 'word counting behaviour' do
      it 'counts the words in all the diary entries' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('my_title', 'my contents')
        diary_entry2 = DiaryEntry.new('my_title', 'my contents 2')
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.count_words). to eq 5
      end
    
    end

    describe 'reading time behaviour' do
      it 'fails' do
        diary = Diary.new
        diary_entry = DiaryEntry.new('my_title', 'contents')
        diary.add(diary_entry)
        expect {diary.reading_time(0)}.to raise_error('Reading speed must be above 0')
      end
      
      it 'calculates the reading time for all entries' do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new('my_title', 'my contents')
        diary_entry2 = DiaryEntry.new('my_title', 'my contents 2')
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        expect(diary.reading_time(2)). to eq 3
      end
      it 'returns a reading time for contents' do
        diary_entry = DiaryEntry.new('my_title', 'one two three four five')
        expect(diary_entry.reading_time(2)).to eq 3
      end
      it 'returns a reading time for contents' do
        diary = Diary.new
        diary_entry = DiaryEntry.new('my_title', 'one two three')
        diary_entry1 = DiaryEntry.new('my_title', 'four five six')
        diary.add(diary_entry)
        diary.add(diary_entry1)
        expect(diary.reading_time(2)).to eq 3
      end
      describe 'finding instance that fits reading time' do
        it 'has a best readable entry of 0' do
            diary = Diary.new
            diary_entry1 = DiaryEntry.new('my_title', 'my contents')
            diary.add(diary_entry1)
            expect(diary.find_best_entry_for_reading_time(2, 1)).to eq diary_entry1
        end
        context 'entry undreadable in time' do
            it 'returns nil' do
              diary = Diary.new
              diary_entry1 = DiaryEntry.new('my_title', 'this is my contents')
              diary.add(diary_entry1)
              expect(diary.find_best_entry_for_reading_time(2, 1)).to eq nil
            end
        end
        context 'where we have multiple entries' do
            it 'returns the longest entry the user could read in this time' do
                diary = Diary.new
                best_entry = DiaryEntry.new('my_title', 'one two')
                diary.add(DiaryEntry.new('my_title', 'one'))
                diary.add(best_entry)
                diary.add(DiaryEntry.new('my_title', 'one two three'))
                diary.add(DiaryEntry.new('my_title', 'one two three four'))
                diary_entry1 = DiaryEntry.new('my_title', 'this is my contents')
                expect(diary.find_best_entry_for_reading_time(2, 1)).to eq best_entry
            end
        end


    end

    end
end