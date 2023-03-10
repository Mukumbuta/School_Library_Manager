# Teacher class that extends Person
require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(age, specialization, name: 'Unknown')
    super()
    @age = age
    @name = name
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
