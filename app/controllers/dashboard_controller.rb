class DashboardController < ApplicationController
  before_filter :authenticate_contractor!
    
  def index
    
  end
end