class Router
  def initialize(books_controller)
    @books_controller = books_controller
    @running = true
  end

  def run
    puts 'Welcome to BookWorm bookstore'

    while @running
      display_route
      action = gets.chomp.to_i
      route(action)
    end
  end

  def stop
    @running = false
  end

  def display_route
    puts 'What do you want to do?'
    puts '1 - List all the books'
    puts '2 - Add a new book'
    puts '3 - Quit'
  end

  def route(action)
    case action
    when 1 then @book_controller.list
    when 2 then @book_controller.all
    when 3 then stop
    end
  end
end
