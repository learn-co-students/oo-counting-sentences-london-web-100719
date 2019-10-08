require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true 
    else
      return false 
    end 
  end

  def question?
    if self.end_with?("?")
      return true 
    else 
      return false 
    end 
  end

  def exclamation?
    if self.end_with?("!")
      return true 
    else 
      return false 
    end 
  end

  def count_sentences
    counter = 0 
    self.split(" ").each do |word|
      if word.sentence? || word.question? || word.exclamation?
        counter += 1
      end
    end
    return counter
  end 
end