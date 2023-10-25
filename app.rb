require 'active_record'
require_relative 'app/controllers/books_controller'
require_relative 'router'


books_controller = BooksController.new
router = Router.new(books_controller)

router.run
