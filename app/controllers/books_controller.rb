require_relative '../views/books_view'
require_relative '../models/book'

class BooksController
  def initialize
    @view = BooksView.new
  end

  def list
    books = Book.all
    @view.display_list(books)
  end
end
