def grammar(string)
    fail "Not a sentence." if string.empty?

    if string[0] == string[0].upcase && string[-1] == '.' || string[-1] == '!' || string[-1] == '?'
      return true
    else
      return false
    end
  end