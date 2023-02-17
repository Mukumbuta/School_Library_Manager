# Make sure that when adding a student to a classroom it also sets the classroom for the student 
# Make sure that when setting the classroom for a student it also adds it to the classrooms students
class ClassroomClass rom class that
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
