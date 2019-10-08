require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # if there is a space after a series of . ? or ! and if there is a character before the first . ? or ! count the sentence
    #split with . or ? or ! and if the length is greater than 1, it is probably some kind of sentence
    count = 0
    minimum_char_length_of_sentece = 1
    split_array = self.split(/[!.?]/)

    split_array.each do | potential_sentence| 
      if potential_sentence.length.to_i  > minimum_char_length_of_sentece
        count += 1
      end
    end

    return count
  end
end