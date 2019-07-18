require 'pry'
require 'byebug'

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
    array=self.squeeze('/[\.|!|?]/').split(/[\.|!|?]/)
    array.length
  end
end