class Classroom
    attr_accessor :label, :student

    def initialize(label)
        @label = label
        @student = []

    end

    def add_student(student)
        @student << student
        student.classroom = self
    end

    def remove_student(student)
        @student.delete(student)
        student.classroom = nil
    end
end