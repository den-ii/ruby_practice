# frozen_string_literal: true
dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(sentence, dictionary)
  available = {}
  dictionary.each do |dict_word|
    sentence.split.each do |word|
      count = 1 if word.downcase.include?(dict_word)
      puts count
      if !available[dict_word] && count
        available[dict_word] = count
      elsif available[dict_word] && count
        available[dict_word] += count
      end
    end
  end
  puts available
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
