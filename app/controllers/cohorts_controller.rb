class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.order(:position)
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end

  def edit
  end

  def new
  end

  def cohorts_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor, :students)
  end
end
