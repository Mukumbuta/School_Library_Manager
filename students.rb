# Named Students to differentiate it from the already existing Student class
require_relative 'person'
class Students < Person
  attr_reader :name, :classroom, :rentals

  def initialize(name)
    super()
    @name = name
    @classroom = nil
    @rentals = []
  end
end
