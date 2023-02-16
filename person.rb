# Define the base Decorator class that inherits from Nameable
require_relative 'nameable'
class Person < Nameable
  attr_accessor :id, :name, :age, :parent_permission

  def initialize(age, parent_permission: true, name: "Unknown")
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end

  def is_of_age?
    @age >= 18
  end

  def correct_name
    name
  end

  private

  def generate_id
    rand(1..1000)
  end
end
