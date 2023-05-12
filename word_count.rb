class Phrase
    attr_reader :text
  
    def initialize(text)
      @text = text
    end
  
    def word_count
      # Using this to extract all works from the phase
      # the regular expression is to matches words, which are defined as one or more word characters (\w) or apostrophes (') 
      words = text.downcase.scan(/\b[\w']+\b/)

      # method to iterate over the words and count them
      # The Hash.new(0) argument creates a new hash with a default value of 0, which is used when a new key is accessed.
      words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
    end
end