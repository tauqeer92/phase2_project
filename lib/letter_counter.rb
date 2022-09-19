class LetterCounter
    def initialize(text)
      @text = text
    end
  
    def calculate_most_common()
      counter = Hash.new(0) # this sets the defalt value to 1
      most_common = nil
      most_common_count = 0
      @text.chars.each do |char|
        next unless is_letter?(char) # if argument in the init is same as is_letter method then will go next line
        counter[char] = (counter[char] || 1) + 1 # if it does match, it adds 1 to the key
        
        if counter[char] > most_common_count # when d is placed even though i equals the same, d is still thereif char is greater than 'most_common_count' it will replace nil with the letter 
          most_common = char
          most_common_count = counter[char] # this adds onto the previous highest letter
          
        end
      end
      return [most_common_count, most_common]
    end
    
    # the default value needs to be changed to 0
    # {"D"=>2, "i"=>3, "g"=>2, "t"=>2, "a"=>2, "l"=>2, "P"=>2, "u"=>2, "n"=>2, "k"=>2}

    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end

#   counter = LetterCounter.new('Digital Punk')
#   counter.calculate_most_common