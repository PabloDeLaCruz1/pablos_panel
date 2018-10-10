class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all.sorted
  end

  def create
    @instructor = Instructor.create(instructor_params)

    if @instructor.valid?
      redirect_to @instructor
    else
      flash[:info] = "Invalid instructor validation"
      render "new"
    end
  end

  def update
    @instructor = current_instructor
    if @instructor.update_attributes(instructor_params)
    else
      render "edit"
    end
  end

  def destroy
    @instructor = current_instructor
    @instructor.destroy

    respond_to do |format|
      format.html { redirect_to instructors_path }
      format.js { render "/instructors/delete.js.erb" }
    end
  end

  def show
    @instructor = current_instructor
  end

  def edit
    @instructor = current_instructor
  end

  def new
    @instructor = Instructor.new
  end

  private

  def current_instructor
    @current_instructor ||= Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:first_name, :last_name, :age, :education)
  end
end
