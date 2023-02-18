require_relative 'person'
require_relative 'teacher'
require_relative 'rental'
require_relative 'book'
require_relative 'students'


class App
    def initialize
        @people = []
        @books = []
        @rentals = []
    end

    # Method to list all books
    def list_books
        puts 'List of all books:'
        @books.each do |book|
            puts '#{book.title} by {book.author}'
        end
    end

    # Method to list all people
    def list_people
        puts 'List of all people:'
        @people.each do |person|
            puts '#{person.name} (#{person.class})'
        end
    end

    # Method to create a person
    def create_person
        puts 'Enter the name of the person:'
        name = gets.chomp
        puts 'Is this person a student or teacher? (s/t)'
        type = gets.chomp.downcase

        if type == 's'
            @people << Students.new(name)
            puts 'Student {name} has been created.'
        elsif type == 't'
            @people << Teacher.new(name)
            puts 'Teacher #{name} has been created.'
        else
            puts 'Invalid input. Please try again.'
        end
    end

    # Method to create a book
    def create_book
        puts 'Enter the title of the book:'
        @title = gets.chomp
        puts 'Enter the author of the book:'
        @author = gets.chomp
        book << Book.new(title, author)
        puts 'Book #{title} by #{author} has been added to the collection'
    end
    
    # Method to create rental
    def create_rental
        puts 'Enter the ID of the person renting the book:'
        @person_id = gets.chomp.to_i
        person = @people.find { |p| p.id == person_id }

        if person.nil?
            puts 'Person with the ID #{person_d} not found'
            return
        end

        puts 'Enter the ID of the book being rented:'
        book_id = gets.chomp.to_i
        book = @book.find { |b| b.id == book_id }

        if book.nil?
            puts 'Book with ID #{book_id} not found'
            return
        end
        rental = Rental.new(person, book)
        @rentals << rental
        puts 'Rental created: #{rental}'
    end
    
    # Method to list all rentals for a given person
    def list_rentals(person_d)
        person = @people.find { |p| p.id == person_id }
        rentals = @rental.select { |r| r.person == person }
        if person.nil?
            puts 'Person with ID #{person_id} not found'
            return
        end
        rentals = @rentals.find { |r| r.person == person }

        if rentals.empty?
            puts '#{person.name} has no rentals'
        else
            puts 'rentals for #{person.name}:'
            rentals.each do |rental|
                puts '#{rental.book.title} by #{rental.book.author} (rented on #{rental.date})'
            end
        end
    end
end
