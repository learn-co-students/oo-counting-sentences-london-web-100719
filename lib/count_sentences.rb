class String

  def sentence?
    self.end_with?("Hi, my name is Sophie.")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/[\.!\?]+/).count
  end
end