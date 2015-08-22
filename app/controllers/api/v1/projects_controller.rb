class Api::V1::ProjectsController < InheritedResources::Base
  before_filter :authenticate_user!
  respond_to :json
  
  def create
    create! { resource.json }
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