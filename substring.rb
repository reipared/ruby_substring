def substrings(word, dictionary)
  # Convert the word to lowercase to make the search case-insensitive
  word = word.downcase

  # Initialize an empty hash to store the results
  results = {}

  # Iterate over each substring in the dictionary
  dictionary.each do |substring|
    # Initialize a counter for the frequency of the substring
    frequency = 0

    # Search for occurrences of the substring in the word
    word.scan(substring.downcase) do
      # Increment the frequency counter for each occurrence found
      frequency += 1
    end

    # If the substring was found at least once, add it to the result hash
    result[substring] = frequency if frequency > 0
  end

  # Return the result hash
  result
end

# Example usage:
dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("below", dictionary) #=> {"below"=>1, "low"=>1}
puts substrings("Howdy partner, sit down! How's it going?", dictionary) #=> {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "go"=>1, "going"=>1}