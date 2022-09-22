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
      fail 'Reading speed must be above 0' unless wpm.positive?
      return (count_words/wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)
      fail 'Reading speed must be above 0' unless wpm.positive?
      no_words_can_read = wpm * minutes
      start = @furthest_word
      ending = @furthest_word + no_words_can_read #this is an integer, 0+2 = 2
      p "This is word length #{words.length}"
      p "This is start #{start}"
      p "This is ending #{ending}"
  
      word_list = words[start...ending] #what does the comma do?
      if ending >= count_words
        @furthest_word = 0
      else
        @furthest_word = ending
      end
      return word_list.join(' ')
    end
  
    private
  
    def words
      return @contents.split
    end
  
  end
  
  