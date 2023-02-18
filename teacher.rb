# Teacher class that extends Person
require_relative 'person'

class Teacher < Person
  attr_accessor :age, :name

  def initialize(age, name)
    super(age, name)
    # @specialization = specialization
  end

  def can_use_service?
    true
  end
end
