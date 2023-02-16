# Person class
class Person
  attr_reader :id, :age
  attr_accessor :name

  def initialize(age, parent_permission: true, name: 'Unknown')
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_service?
    is_of_age || @parent_permission
  end

  def of_age?
    @age >= 18
  end

  private

  def generate_id
    Random.rand(1..1000)
  end
end
