# Define the base Decorator class that inherits from Nameable
require_relative 'nameable'
class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
