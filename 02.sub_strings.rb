def substrings(phrase, dictionary)
  hash = Hash.new { hash[value] = value }

  dictionary.each_with_index do |check, j|
    count = 0
    phrase.split.each do |text|
      count += 1 if text.downcase.include?(check)
      hash[dictionary[j]] = count if count.positive?
    end
  end

  hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
# { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
