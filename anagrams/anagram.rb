class Anagram
  attr_reader :word
  
  def initialize(word)
    @word = word
  end
  
  def match(list)
    list.each.select do |n| 
      n.downcase.split('').sort.join == word.downcase.split('').sort.join && n.downcase != word.downcase
    end
  end
end
