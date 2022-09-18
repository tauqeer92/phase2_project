class GrammarStats
    def initialize
      @truth = 0
      @total = 0
    end
  
    def check(text) 
        if text[0] == text[0].upcase && text[-1] == '.' || text[-1] == '!' || text[-1] == '?'
          @truth += 1
          @total += 1
          return true
          
        else
          @total += 1
          return false
        end
    end
  
    def percentage_good 
      if @truth == 0
        return 0
      else
        return (@truth/@total.to_f).round(2)*100
      end
    end
  end