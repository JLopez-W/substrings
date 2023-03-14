dictionary = ["crummy", "crumb", "crumble", "rum", "my", "also", "so", "son", "oval", "ovaltine", "malt", "a", 
  "commercial", "commerce", "me", "of", "off", "offer", "bitch", "bit", "itch", "it", "i"]
string = "Ovaltine? A crummy commercial? Son of a bitch!"

def substrings(string, dictionary)
  string_arr = string.downcase.split(" ")
  temp_arr = []
  dictionary.each do |item|
    item
   string_arr.each do |word|
    if word.include?(item) 
      temp_arr.push(item)
   end
  end
end
  temp_arr
  substring_totals = Hash.new
  temp_arr.each do |item| 
    if substring_totals.has_key?(item) == false
      substring_totals[item] = 1
    else
     substring_totals[item] += 1
    end
  end
  substring_totals
end

puts "\n'#{string}'\n\ninlcudes the following substrings:\n\n"
p substrings(string, dictionary)