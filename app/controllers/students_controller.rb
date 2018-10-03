class StudentsController < ApplicationController
  def new
  end

  def show
  end

  def create
    # render plain: params[:student].inspect
    params[:students].inspect
    @student = Student.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      age: params[:age],
      education: params[:education],
    )

    redirect_to @student
  end
end
