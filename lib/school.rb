# code here!

class School

    attr_accessor :roster, :student_name

    def initialize(domain)
        @domain = domain
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= []
        roster[grade] << student_name
    end

    def grade(students_grade)
        roster[students_grade]
    end

    def sort
        hash = {}
        roster.each do |grade, student|
            hash[grade] = student.sort
        end
        hash
    end
end
