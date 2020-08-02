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

    sentence_count = 0
    minimum_char_length_of_sentece = 1
    split_array = self.split(/[!.?]/)

    split_array.each do | potential_sentence | 
      if potential_sentence.length.to_i  > minimum_char_length_of_sentece
        sentence_count += 1
      end
    end

    return sentence_count
  end
end