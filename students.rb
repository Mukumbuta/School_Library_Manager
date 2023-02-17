class Students
    attr_accessor :name, :classroom, :rentals

    def initialize(name)
        @name = name
        @classroom = nil
        @rentals = []
    end
end
