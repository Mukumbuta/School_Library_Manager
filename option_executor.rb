# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
require_relative 'app'
require_relative 'create_books'
def option_executor(choice)
  app = App.new
  create_b = CreateBook.new

  loop do
    case choice
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      create_b.create_book
    when 5
      app.create_rental
    when 6
      puts 'Enter the ID of the person:'
      person_id = gets.chomp.to_i
      app.list_rentals(person_id)
    when 7
      puts 'Goodbye!'
      break
    else
      puts 'Invalid input. Please try again.'
    end
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
