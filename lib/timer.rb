def timer(words)
    time = (words/200.to_f).ceil
  
    if time == 0
      return '0 minutes'
    elsif time == 1
      return '1 minute'
    else
      return "#{time} minutes"
    end
  end