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
    seperate_sentences = self.split(/(?<=[?.!])/)
    seperate_sentences.delete_if {|str| str.length == 1}
    seperate_sentences.length
  end
end