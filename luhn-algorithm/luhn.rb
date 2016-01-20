class Luhn
  attr_reader :numbers
  
  def initialize(number)
    @numbers = number.to_s.chars.map { |n| n.to_i }.reverse
  end
  
  def addends
    numbers.each_with_index.map do |n, i|
      if i.odd?
        n * 2 > 9 ? n * 2 - 9 : n * 2
      else
        n
      end
    end.reverse
  end
  
  def checksum
    addends.inject(:+)
  end
  
  def valid?
    checksum % 10 == 0
  end
  
  def self.create(number)
    (0..9).each do |n|
      checker = "#{number}#{n}".to_i
      return checker if luhn = Luhn.new(checker).valid?
    end
  end
end
