class SumOfMultiples
  attr_reader :a, :b, :c
  
  def initialize(a, b, c = nil)
    @a = a
    @b = b
    @c = c
  end
  
  def self.to(number)
    (0...number).select { |n| n if n % 5 == 0 || n % 3 == 0 }.inject(:+)
  end
  
  def to(number)
    array = (0...number).select do |n| 
      n if n % a == 0 || n % b == 0 || (n % c == 0 if c)
    end
    array.inject(:+)
  end
end
