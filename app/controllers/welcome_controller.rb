class WelcomeController < ApplicationController
  before_action :authorize

  def index
    @all = (Instructor.all + Course.all + Cohort.all + Student.all).sort_by(&:created_at)
    @user = current_user
  end
end
