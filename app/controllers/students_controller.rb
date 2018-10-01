class StudentsController < ApplicationController
  def new
  end

  def show
  end

  def create
    render plain: params[:student].inspect
  end
end
