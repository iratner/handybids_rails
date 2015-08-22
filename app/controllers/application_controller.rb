class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    
  helper_method :get_resource
  def get_resource
    self.send(:get_resource_ivar) rescue nil
  end
end
