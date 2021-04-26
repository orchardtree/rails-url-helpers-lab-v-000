class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    binding.pry
    @student.active = true
  end

  private

    def set_student
      binding.pry
      @student = Student.find(params[:id])
    end
end
