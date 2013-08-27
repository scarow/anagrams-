class Word < ActiveRecord::Base
  before_save :sort_word

  protected
  
  def sort_word
    self.sorted_entry = self.entry.split('').sort.join('')
  end

end
