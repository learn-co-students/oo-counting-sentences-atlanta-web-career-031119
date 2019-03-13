require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    count = self.split(/[.?!]/)
    number = 0
    for n in 0...count.size
      if count[n].size >= 2
        number += 1
      end
    end
    number
  end
end
