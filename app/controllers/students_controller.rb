class StudentsController < ApplicationController

  def index
    # byebug
    students = Student.all.find_by_first_name(params[:key1])
    render json: students
  end

  def show
    student=Student.find(params[:id])
    render json: student
  end
end
