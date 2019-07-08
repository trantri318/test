class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show 
  end

  def new
    @student = Student.new
  end

  def edit  
  end

  def update
    if @student.update(student_params)
      redirect_to students_url
    else
      redirect_to edit_student_url(@studentt.id)
    end
  end

   def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to students_url
    else
      redirect_to new_student_url
    end
  end

  def destroy
    @student.destroy
    redirect_to students_url
  end

  private
    
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :class_university, :score, :learning_power)
  end
end
