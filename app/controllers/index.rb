get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do
  @word = params[:user_input]

  @sorted_word = @word.downcase.split("").sort.join("")

  list_of_words = Word.all
  @array_of_anagrams = []



  list_of_words.each do |w|

    if w.sorted_entry == @sorted_word
      @array_of_anagrams << w.entry
    end

  end
 
  erb :anagram

end
