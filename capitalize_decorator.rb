# Define the CapitalizeDecorator class that inherits from Decorator
require_relative 'base_decorator'
class CapitalizeDecorator < Decorator
    def correct_name
        @nameable.correct_name.capitalize
    end
end
