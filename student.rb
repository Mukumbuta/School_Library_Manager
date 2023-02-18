# Student class that extends Person
require_relative 'person'
class Student < Person
  attr_reader :classroom

  def initialize(classroom)
    super()
    @classroom = classroom
    classroom.students << self
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end
end
