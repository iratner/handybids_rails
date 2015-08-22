class ProjectsController < InheritedResources::Base
  
  def create
    build_resource
    resource.status = 'Open'
 
    create! {collection_url}
  end
  
    
  protected
    def begin_of_association_chain
      current_user
    end
  
  private
    def permitted_params
		params.permit(project: [:name, :description, :video, :status, :category,
        :urgency
    ])
    end
end
