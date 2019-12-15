class PigLatinizer

    def piglatinize(string)
        a = string.split(" ")
        b = a.collect{|word| piglatinize_word(word)}
        b.join(" ")
    end

    def piglatinize_word(word)
        if consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
            word[3..-1] << word[0..2] + "ay"
        elsif consonant?(word[0]) && consonant?(word[1])
            word[2..-1] << word[0..1] + "ay"
        elsif consonant?(word[0])
            word[1..-1] << word[0] + "ay"
        else 
            word + "way"
        end

    end

    def consonant?(letter)
        letter.match(/[^aeiouAEIOU]/)
    end
  end