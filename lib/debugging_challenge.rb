def get_most_common_letter(text)
  index = -1
  common_letter = ''
  counter = Hash.new(0) # This has 0, is this a key or a value A: This sets any key to 0
  text.chars.each do |char|
    counter[char] += 1
  end
   # o is the most frequent letter, space is the most frequent but ! is returned
   counter.to_a.sort_by { |k, v| v } #we're sorting based on key and value, and we're looking at value then indexing the hash and then indexing the key
  array = counter.to_a.sort_by { |k, v| v }
  while common_letter.empty?
    if ('a'...'z').to_a.include?(array[index][0])
      common_letter += array[index][0]
    else
      index -=1
    end
  end
  return common_letter
end

