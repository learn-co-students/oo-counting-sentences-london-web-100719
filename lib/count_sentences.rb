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

  # Counting sentences isn't easy! We'll use RegExp .split(/.../), which lets us use multiple delimiters. It won't handle all edge cases.
  def count_sentences
    split_sentences = self.split(/[!.?]/)
    if split_sentences.include?("")
      split_sentences -= [""]
    end
    split_sentences.count
  end
end