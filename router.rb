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
    puts "\nWhat do you want to do?"
    puts "\n1 - List all the books"
    puts '2 - Add a new book'
    puts '3 - Mark as rent'
    puts '4 - Delete a book'
    puts '5 - Quit'
  end

  def route(action)
    case action
    when 1 then @books_controller.list
    when 2 then @books_controller.add
    when 3 then @books_controller.mark_as_rent
    when 4 then @books_controller.destroy
    when 5 then stop
    end
  end
end
