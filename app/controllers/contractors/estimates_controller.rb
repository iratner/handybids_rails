class Contractors::EstimatesController < InheritedResources::Base
  nested_belongs_to :project
  
  def create
    create!{ 
      #for some reason inherited resources isn't catching the contractor_id
      resource.contractor_id = current_contractor.id
      resource.save
      contractors_projects_path 
    }
  end
  
  protected
    def begin_of_association_chain
      current_contractor
    end
    
  private
    def permitted_params
		params.permit(estimate: [:range, :description, :project_id,
    ])
    end
end