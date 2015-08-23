class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
    
  ##
  # if we try to enter a url that requires a user to be logged in
  # we will store the url in the session and use it for
  # an after login redirect
  def after_sign_in_path_for(resource)
    return contractors_root_path if resource.class.name.eql?('Contractor')
    session.delete(:previous_url) || dashboard_path
  end
  
  
  helper_method :get_resource
  def get_resource
    self.send(:get_resource_ivar) rescue nil
  end
end
