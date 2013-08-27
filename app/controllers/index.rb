get '/' do
  erb :index
end

post '/' do
  @word = params[:user_input]
  @anagrams = []
  sorted_word = @word.downcase.split("").sort.join("")
  list_of_words = Word.where(sorted_entry: sorted_word)
  list_of_words.each do |w|
    @anagrams << w.entry
  end
  erb :index
end
