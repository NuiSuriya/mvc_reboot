class BooksView
  def display_list(books)
    books.each_with_index do |book, i|
      puts "#{i + 1} - Title: #{book.title.capitalize} (€#{book.price})"
    end
  end
end
