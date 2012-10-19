def palindrome?(string)
  # your code here
	g = string.downcase.gsub(/[^a-z]/, '') 
	b = g.reverse
	return g == b
end

def count_words(string)
  # your code here
  	str_hash = Hash.new
	a = (string.downcase).gsub(/[^a-z\s]/, '').split(/[\b\s]/)
  	#puts g
	a.each do |key|
		if key != ''
			if !str_hash.has_key?(key)
				str_hash[key] = 0
			end
			str_hash[key] +=1
  		end
 	end
 	return str_hash
end

puts count_words("A man, a plan, a canal -- Panama")

# => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
puts count_words "Doo bee doo bee doo"  # => {'doo' => 3, 'bee' => 2}


puts 

puts palindrome?("A man, a plan, a canal -- Panama")  #=> true
puts palindrome?("Madam, I'm Adam!")  # => true
puts palindrome?("Abracadabra")  # => false (nil is also ok)
