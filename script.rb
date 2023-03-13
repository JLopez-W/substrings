dictionary = ["crummy", "crumb", "crumble", "rum", "my", "also", "so", "son", "oval", "Ovaltine", "malt", "a", 
  "commercial", "commerce", "me", "of", "off", "offer", "bit", "itch", "bitch", "it", "i"]

string = "Ovaltine? A crummy commercial? Son of a bitch!"

substring_totals = Hash.new

def substrings(string, dictionary)
  string_arr = string.split(" ") 

  dictionary.each do |item|
    item
   string_arr.each do |word|
    if word.include?(item) 
  p "#{word} includes #{item}"
   end
  end
  end
end


p substrings(string, dictionary)

