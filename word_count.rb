class Phrase
    attr_reader :text
  
    def initialize(text)
      @text = text
    end
  
    def word_count
      words = text.downcase.scan(/\b[\w']+\b/)
      words.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
    end
end