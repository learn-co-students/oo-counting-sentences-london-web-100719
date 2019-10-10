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
    self.split.count {|element| element.sentence? || element.question? || element.exclamation?}
  end
end

binding.pry
p "oeteagr"