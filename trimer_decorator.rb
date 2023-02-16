# Define the TrimmerDecorator class that inherits from Decorator
require_relative 'base_decorator'
class TrimmerDecorator < Decorator
    def correct_name
        name = @nameable.correct_name
        name.lenght > 10 ? name.slice(0, 10) : name
    end
end