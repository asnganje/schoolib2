class Classroom
    attr_accessor :label

    def initialize(label)
        @label = label
    end

    def add_student(student)
        @students << student
        student.classroom = self # student.classroom=(self) 
    end
end