require 'pry'

class String

  def sentence?
    p self
    self[self.length - 1] == '.'? true : false
  end

  def question?
    p self
    self[self.length - 1] == '?'? true : false
  end

  def exclamation?
    self[self.length - 1] == '!'? true : false
  end

  def count_sentences
    array = self.split(/[!?.]/)
    new_array = []
    array.each do |item| 
      if item != ""
        new_array << item
      end
    end
    new_array.count
  end
end

p 'hello.'.sentence?