class PigLatin
  VOWEL_SOUNDS = %w[xr yt a e i o u]
  CONSONANT_SOUNDS = %w[sch thr squ ch qu th b c d f g h j k l m n p q r s t v w x y z]
  
  def self.translate(phrase)
    final_phrase = []
    phrase.split(' ').each do |word|
      if starts_with_vowel_sound?(word) == 'true'
        return_word = "#{phrase}ay"
      elsif starts_with_consonant_sound?(word) == 'true'
        word_start = consonant_sound(word).length
        return_word = "#{word[word_start..word.length]}#{consonant_sound(word)}ay"
      end
      final_phrase << return_word
    end
    final_phrase.join(' ')
  end
    
  def self.starts_with_vowel_sound?(word)
    VOWEL_SOUNDS.each { |sound| return 'true' if word.start_with?(sound) }
  end
  
  def self.starts_with_consonant_sound?(word)
    CONSONANT_SOUNDS.each { |sound| return 'true' if word.start_with?(sound) }
  end
  
  def self.consonant_sound(word)
    CONSONANT_SOUNDS.each { |sound| return sound if word.start_with?(sound) }
  end
end
