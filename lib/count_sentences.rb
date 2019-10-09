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
    delimeters = ['.', '!', '?']
    array = self.split(Regexp.union(delimeters))
    new_array = array.reject {|i| i.empty?}
    new_array.length
  end
end