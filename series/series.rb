class Series
  attr_accessor :number
  
  def initialize(number)
    @number = number
  end
  
  def slices(length)
    
    raise ArgumentError.new if length > number.length
    
    array = number.chars.map { |n| n.to_i }
    slice = []
    
    array.each_index do |index|
      break if array[index, length].length < length
      slice << array[index, length]
    end
    
    slice
  end
end
