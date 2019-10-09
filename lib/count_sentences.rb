require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end

  end

  def count_sentences
    delimiters = [".", "?", "!"]
    array = self.split(Regexp.union(delimiters))
    array = array.reject {|i| i.empty?}
    array.length
  end
end