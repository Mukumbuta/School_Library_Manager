# rubocop:disable Lint/MissingSuper
# This class handles the creation of book
require_relative 'book'

class CreateBook < Book
  def initialize
    @books = []
  end

  # Method to create a book
  def create_book
    puts 'Enter the title of the book:'
    @title = gets.chomp
    puts 'Enter the author of the book:'
    @author = gets.chomp
    @books << Book.new(title, author)
    puts "Book #{title} by #{author} has been added to the collection"
  end
end
# rubocop:enable Lint/MissingSuper
