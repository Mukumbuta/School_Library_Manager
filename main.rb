# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/CyclomaticComplexity
# This is the entry-point to the application
require_relative 'app'
def main
  app = App.new

  loop do
    puts "\nWhat would you like to do?"
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List rentals for a person'
    puts '7. Quit'

    choice = gets.chomp.to_i

    case choice
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
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
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/CyclomaticComplexity
main
