class WelcomeController < ApplicationController
  def index

    @array =[1,2,3,5]
    @id = params[:id]
    @page = params[:page]
    
  end
end
