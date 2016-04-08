class Trinary
  def initialize(number)
    @number = number
  end
  
  def to_decimal
    return 0 if @number.upcase != @number
    @number.chars.reverse.each_with_index.inject(0) do |sum, (v, i)|
      sum + v.to_i*3**i
    end
  end
end
