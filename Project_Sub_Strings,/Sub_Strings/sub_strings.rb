#Create method with parameters
def substrings(random_word, dictionary)
  #return words as downcase even if they are written with caps or one letter being upcase
  random_word = random_word.downcase
#this is a hash and it's empty this is where we will store matching substrings and counts
  result = {}
  # this will loop through each word in our dictionary
  dictionary.each do |word|
    # Count how many times each substring appears
    count = random_word.scan(word).length
    # store word and count in hash if matchesare found
    result[word] = count if count > 0
  end
# reutrn final hash
  result
end


dictionary = ["cat", "birthday", "baby", "coffee", "hot water", "tiger", "rabbit", "ruby", "jade", "mountain", "math", "history", "the", "is", "to", "east", "with", "flowing", "rivers"]

p substrings("the mountain, is to the east, with flowing rivers.", dictionary)