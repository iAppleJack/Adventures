class TravelsController < ApplicationController
  before_action   :set_auth

  def index
    @travels = Travel.all
  end

  def new
    @travel = Travel.new
  end

  def show
    @travel = Travel.find(params[:id])
  end

  def create
    @travel = Travel.new(resume_params)

    if @travel.save
      redirect_to travels_path, notice: "The resume #{@travel.name} has been uploaded."
    else
      render "new"
    end

  end

  def destroy
    @travel = Travel.find(params[:id])
    @travel.destroy
    redirect_to travels_path, notice:  "The resume #{@travel.name} has been deleted."
  end

  private
  def resume_params
    params.require(:travel).permit(:name, :country, :img)
  end

end
