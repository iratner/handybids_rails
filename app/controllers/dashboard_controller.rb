class DashboardController < ApplicationController
  before_filter :authenticate_user!
    
  def index
    redirect_to projects_path
  end
end