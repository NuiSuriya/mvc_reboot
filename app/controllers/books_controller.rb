require_relative '../views/books_view'
require_relative '../models/book'

class BooksController
  def initialize
    @view = BooksView.new
  end

  def list
    display_books
  end

  def add
    title = @view.ask_for('title')
    category = @view.ask_for('category')
    price = @view.ask_for('price').to_i

    new_book = Book.new(title: title, category: category, price: price)
    new_book.save
    display_books
  end

  def mark_as_rent
    display_books
    id = @view.ask_for_id
    book = Book.find(id)
    book.rent = !book.rent
    book.save
    display_books
  end

  def destroy
    display_books
    id = @view.ask_for_id
    book = Book.find(id)
    book.destroy

    display_books
  end

  private

  def display_books
    books = Book.all
    @view.display_list(books)
  end
end
