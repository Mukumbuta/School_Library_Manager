# Named Students to differentiate it from the already existing Student class
require_relative 'person'

class Student < Person
  attr_reader :name, :rentals
  attr_accessor :classroom

  def initialize(name)
    super()
    @name = name
    @rentals = []
    @classroom = nil
  end
end
