# Rentals class
class Rental
  attr_accessor :date, :book, :person

  def initialize(date, books, person)
    @date = date
    @book = books
    @person = person
    @person.rentals << self
    books.each { |book| book.rentals << self }
  end
end
