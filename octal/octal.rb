class Octal
  attr_reader :array
  
  def initialize(number)
    @array = number.chars.reverse
  end
  
  def to_decimal
    array.any? { |number| number.to_i >= 8 || number.to_i.to_s != number } ? 0 : output
  end
  
  def output
    array.each_with_index.map { |number, index| number.to_i * 8**index }.reduce(:+)
  end
  
end
