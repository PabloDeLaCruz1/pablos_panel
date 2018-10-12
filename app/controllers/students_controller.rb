class StudentsController < ApplicationController
  before_action :authorize

  def index
    @students = Student.all.sorted
  end

  def create
    @student = Student.create(student_params)

    if @student.valid?
      redirect_to @student
    else
      flash[:info] = "Invalid student validation"
      render "new"
    end
  end

  def update
    @student = current_student
    if @student.update_attributes(student_params)
    else
      render "edit"
    end
  end

  def destroy
    @student = current_student
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_path }
      format.js { render "/students/delete.js.erb" }
    end
  end

  def show
    @student = current_student
  end

  def edit
    @student = current_student
  end

  def new
    @student = Student.new
  end

  private

  def current_student
    @current_student ||= Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:first_name, :last_name, :age, :education)
  end
end
