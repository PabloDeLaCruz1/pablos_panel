class CohortsController < ApplicationController
  def index
    @cohorts = Cohort.all.sorted
  end

  def create
    # render plain: params[:cohort].inspect
    # params[:cohorts].inspect
    @cohort = Cohort.create(cohort_params)

    if @cohort.valid?
      redirect_to @cohort
    else
      flash[:info] = "Invalid cohort validation"
      render "new"
    end
  end

  def update
    @cohort = current_cohort
    if @cohort.update_attributes(cohort_params)
    else
      render "edit"
    end
  end

  def destroy
  end

  def show
    @cohort = current_cohort
  end

  def edit
    @cohort = current_cohort
  end

  def new
    @cohort = Cohort.new
  end

  private

  def current_cohort
    @current_cohort ||= Cohort.find(params[:id])
  end

  def cohort_params
    params.require(:cohort).permit(:name, :start_date, :end_date, :instructor, :students)
  end
end
