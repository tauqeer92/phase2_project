class DiaryEntry
    def initialize(title, contents)
      @title = title
      @contents = contents
      @furthest_word = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      return words.length
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
      return (count_words/wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)
      no_words_can_read = wpm * minutes
      start = @furthest_word
      ending = @furthest_word + no_words_can_read #this is an integer, 0+2 = 2
      p "This is word length #{words.length}"
      p "This is start #{start}"
      p "This is ending #{ending}"
  
      word_list = words[start...ending] #what does the comma do?
      if ending >= words.length
        @furthest_words = 0
      else
        @furthest_word = ending
      end
      return word_list
    end
  
    private
  
    def words
      return @contents.split
    end
  
  end
  
  new = DiaryEntry.new('Tauqeer', 'one two three')
  p new.reading_chunk(2, 1)
  p new.reading_chunk(2, 1)
  p new.reading_chunk(2, 1)
  p new.reading_chunk(2, 1)
  p new.reading_chunk(2, 1)
  
  