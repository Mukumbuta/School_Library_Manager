# Named Students to differentiate it from the already existing Student class
require_relative 'person'

class Student < Person
  attr_reader :name, :rentals, :classroom

  def initialize(name)
    super()
    @name = name
    @rentals = []
    @classroom = nil
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
