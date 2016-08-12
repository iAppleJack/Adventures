class MenuController < ApplicationController
  before_action :set_auth
  def index

  end

  def findMe

  end

  private
  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
