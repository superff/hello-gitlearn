def combine_anagrams(words)
  #   <YOUR CODE HERE>
  hash = Hash.new
  words.each do |word|
  	 key = word.downcase.chars.sort_by(&:downcase).join
  	 if !hash.has_key?(key)
				hash[key] = Array.new
			end
			hash[key].push(word)
  	end

  return hash.values

end

puts combine_anagrams(['cars', 'for', 'potatoes', 'Racs', 'four','scar', 'creams', 'scream'] )