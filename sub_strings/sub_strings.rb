dictionary = ["below","down","go","going","horn","how","howdy",
                  "it", "i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  matches = {}
  dictionary.each do |word_dictionary|
    string.downcase.split.each do |word_string|
      if word_string.include? word_dictionary
        if matches[word_dictionary].nil? == true
          matches[word_dictionary] = 1
        else
          matches[word_dictionary] += 1
        end
      end
    end
  end
  p matches
end
  
substrings("Howdy partner, sit down! How's it going?", dictionary)