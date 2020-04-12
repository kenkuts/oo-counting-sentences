require 'pry'

class String

  def sentence?
    # self[self.length - 1] == "." ? true : false
    self.end_with?(".")
  end

  def question?
    # self[self.length - 1] == "?" ? true : false
    self.end_with?("?")
  end

  def exclamation?
    # self[self.length - 1] == "!" ? true : false
    self.end_with?("!")
  end

  def count_sentences
    self.split(". ").map{|ele| ele.split("! ")}.flatten.map{|ele| ele.split("? ")}.flatten.count
  end
end