class Series
  attr_accessor :number
  
  def initialize(number)
    @number = number
  end
  
  def slices(length)
    
    raise ArgumentError.new if length > number.length
    
    array = number.chars.map { |n| n.to_i }
    slice = []
    
    array.length.times do
      slice << array.take(length)
      array.shift
      break if array.length < length
    end
    
    slice
  end
end
