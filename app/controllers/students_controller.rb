class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        students_by_grade = Student.all.order_by_grades
        render json: students_by_grade
    end

    def highest_grade
        student_w_highest_grade = Student.highest_graded
        render json: student_w_highest_grade
    end
end
