class Contractors::DashboardController < ApplicationController
  before_filter :authenticate_contractor!
    
  def index
    redirect_to contractors_projects_path
  end
end