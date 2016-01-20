class Translation
  VALUES = {Methionine: %w[AUG],
            Phenylalanine: %w[UUU UUC],
            Leucine: %w[UUA UUG],
            Serine: %w[UCU UCC UCA UCG],
            Tyrosine: %w[UAU UAC],
            Cysteine: %w[UGU UGC],
            Tryptophan: %w[UGG],
            STOP: %w[UAA UAG UGA] }
  
  def self.of_codon(str)
    of_codon = VALUES.select { |key, value| value.include?(str) }.keys[0].to_s
    raise InvalidCodonError if of_codon.empty?
    of_codon
  end
  
  def self.of_rna(str)
    array = []
    x = 0
    (str.length/3).times do
      of_codon(str[x, 3]) == 'STOP' ? break : array << of_codon(str[x, 3])
      x += 3
    end
    array
  end
end

class InvalidCodonError < StandardError
end
