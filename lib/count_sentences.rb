require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    word_array = self.split
    i = 0
    count = 0

    while i < word_array.length
      if word_array[i].sentence? || word_array[i].question? || word_array[i].exclamation? == true
        count += 1
        i += 1
      else
        i += 1
      end
    end
    count
  end
end
