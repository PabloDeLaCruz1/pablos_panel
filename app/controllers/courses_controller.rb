class CoursesController < ApplicationController
  before_action :authorize

  def index
    @courses = Course.all.sorted
  end

  def create
    # render plain: params[:course].inspect
    # params[:courses].inspect
    @course = Course.create(course_params)

    if @course.valid?
      redirect_to @course
    else
      flash[:info] = "Invalid course validation"
      render "new"
    end
  end

  def update
    @course = current_course
    if @course.update_attributes(course_params)
    else
      render "edit"
    end
  end

  def destroy
    @course = current_course
    @course.destroy

    respond_to do |format|
      format.html { redirect_to courses_path }
      format.js { render "/courses/delete.js.erb" }
    end
  end

  def show
    @course = current_course
  end

  def edit
    @course = current_course
  end

  def new
    @course = Course.new
  end

  private

  def current_course
    @current_course ||= Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :total_hours)
  end
end
