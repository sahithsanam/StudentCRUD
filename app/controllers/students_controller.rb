class StudentsController < ApplicationController
  def index
    @students=Student.all
  end

  def show
    @student=Student.find(params[:id])
  end

  def edit
    @student=Student.find(params[:id])
  end

  def update
    @student =Student.find(params[:id])
    @student.update(student_params);
    redirect_to students_path
  end  

  def index
    @students = if params[:query].present?
                  Student.where("name LIKE ?", "%#{params[:query]}%")
                else
                  Student.all
                end
  end
  
  def destroy
    @student=Student.find(params[:id])
    @student.destroy
    redirect_to students_path
  end  

  def create
    student= Student.create(student_params)
    redirect_to students_path
  end  

  def new
    @student =Student.new
  end

  private
  def student_params
    params.require(:student).permit(:name,:roll_no,:age)
  end  
end
