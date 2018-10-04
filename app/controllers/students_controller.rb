class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def show
    @student = current_student
  end

  def create
    # render plain: params[:student].inspect
    # params[:students].inspect
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to @student
    else
      flash[:info] = "Invalid student validation"
      redirect_to @student
    end
  end

  def update
    @student = Student.update(student_params)
  end

  def current_student
    @current_student ||= Student.find(params[:user_id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
