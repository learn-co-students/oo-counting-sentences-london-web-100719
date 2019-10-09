require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences 
    binding.pry
    sentences = 0
    array = self.split(" ")
    array.each do |str|
      if str.sentence? || str.question? || str.exclamation?
        sentences += 1
      end
    end
    sentences
  end

end