class Prime
  def self.is_prime?(number)
    (2..Math.sqrt(number)).each { |n| return false if number % n == 0 }
  end
  
  def self.nth(number)
    raise ArgumentError.new if number < 1
    counter = 0
    n = 1
    while counter < number
      n += 1
      counter += 1 if is_prime?(n)
    end
    n
  end
end
