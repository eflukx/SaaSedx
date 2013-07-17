def combine_anagrams(words)
  _ht = Hash.new([])
  words.each { |word| 
    _key = word.downcase.chars.sort.join
    _ht[_key] = _ht[_key] + [word]
  }
  return _ht.values  
end

testinput = ['cars', 'for', 'pOtatoes', 'racs', 'four', 'scar', 'creams', 'scream'] 
puts combine_anagrams(testinput).inspect
puts "\n"
testinput = []
puts combine_anagrams(testinput).inspect