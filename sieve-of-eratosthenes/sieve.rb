class Sieve
  attr_accessor :number
  
  def initialize(number)
    @number = number
  end
  
  def is_prime?(n)
    return_value = true
    (2..n - 1).each do |s|
      if n % s == 0
        return_value = false
        break
      elsif n % s != 0
        return_value = true
      end
    end
    return_value
  end
  
  def primes
    (2..number).select { |n| is_prime?(n) }
  end
  
end
