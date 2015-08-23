class EstimatesController < InheritedResources::Base
  custom_actions :resource => :accept

  def accept
    resource.project.accepted_estimate = resource
    resource.project.status = "In Progress"
    flash[:success] = "Estimate succesfully accepted!"
    redirect_to projects_path
  end
  
  protected
    def begin_of_association_chain
      current_user
    end
end