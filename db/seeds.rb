# this will open the file, read the contents of the file into memory, and then loop over each line of those contents
File.open('app/words', "r").read.each_line do |line|

  chomped_line = line.downcase.chomp
  Word.create(:entry => chomped_line) #need to slice this so we can sort it


# This is the same as THIS:
  # word = Word.new
  # word.entry = line
  # word.save

end


