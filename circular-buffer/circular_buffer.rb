class CircularBuffer
  
  class BufferEmptyException < RuntimeError; end
  class BufferFullException < RuntimeError; end
  
  def initialize(size)
    @size = size
    @array = []
  end
  
  def write(data)
    raise BufferFullException if @array.size == @size
    @array << data unless data.nil?
  end
  
  def write!(data)
    if data.to_i == 0
      @array.shift unless data.nil?
      @array << data unless data.nil?
    else
      write(data) unless data.nil?
    end
  end
  
  def clear
    @array.clear
  end
  
  def read
    raise BufferEmptyException if @array.empty?
    @array.shift
  end
end
