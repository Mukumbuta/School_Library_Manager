# This is the entry-point to the application
require_relative 'option_executor'
def main
  puts "\nWhat would you like to do?"
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List rentals for a person'
  puts '7. Quit'

  choice = gets.chomp.to_i
  option_executor(choice)
end

main
