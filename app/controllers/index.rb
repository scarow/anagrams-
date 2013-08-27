get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/:word' do
  @word = params[:word]

  @sorted_word = @word.downcase.split("").sort.join("")

  list_of_words = Word.all
  @array_of_anagrams = []



  list_of_words.each do |w|

    if w.sorted_entry == @sorted_word
      @array_of_anagrams << w.entry
    end

  end
 
  erb :index

end
