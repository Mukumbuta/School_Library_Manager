# Named Students to differentiate it from the already existing Student class
class Students
  attr_accessor :name, :classroom, :rentals

  def initialize(name)
    @name = name
    @classroom = nil
    @rentals = []
  end
end
