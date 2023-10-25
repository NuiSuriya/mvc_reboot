class BooksView
  def display_list(books)
    books.each do |book|
      mark = book.rent ? 'X' : ' '
      puts "[#{mark}]#{book.id} - #{book.title.capitalize} (€#{book.price})"
    end
  end

  def ask_for(thing)
    puts "What is the #{thing}?"
    gets.chomp
  end

  def ask_for_id
    puts 'Which ID?'
    gets.chomp.to_i
  end
end
