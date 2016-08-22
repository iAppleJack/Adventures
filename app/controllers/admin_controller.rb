class AdminController < ApplicationController
  before_action   :set_auth
  def index
    @travels = Travel.all

    @travel = Travel.new

  end

  def travelcreate
    #@travel = Travel.new(params[:travel])
    #@travel.save
    redirect_to root_path
  end
end
