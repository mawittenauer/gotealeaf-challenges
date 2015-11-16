class Triplet
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end
  
  def sum
    a + b + c
  end
  
  def product
    a * b * c
  end
  
  def pythagorean?
    a**2 + b**2 == c**2
  end
  
  def self.where(hash)
    max_factor = hash[:max_factor]
    min_factor = hash[:min_factor] || 1
    sum = hash[:sum]
    triplets = []
    
    array = (min_factor..max_factor).to_a.combination(3).to_a
    
    if !sum
      array.each do |pair|
        triplet = Triplet.new(pair[0], pair[1], pair[2])
        triplets << triplet if triplet.pythagorean?
      end
    else
      array.each do |pair|
        triplet = Triplet.new(pair[0], pair[1], pair[2])
        triplets << triplet if triplet.pythagorean? && triplet.sum == sum
      end
    end
    triplets
  end
end
