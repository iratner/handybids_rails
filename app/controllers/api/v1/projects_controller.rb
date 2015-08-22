class Api::V1::ProjectsController < InheritedResources::Base
  #before_filter :authenticate_user!
  skip_before_filter :verify_authenticity_token
  respond_to :json
  
  
  def index
    index! { collection.to_json}
  end
  
  def create
    create! { resource.to_json }
  end
  
  def show
    show! { resource.to_json}
  end
  

  private
	def permitted_params
		params.permit(project: [:name, :description, :video, :status, :category,
        :urgency
    ])
    end
end