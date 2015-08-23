class UserController < InheritedResources::Base
  

  
#  protected
#    def begin_of_association_chain
#      current_user
#    end
  
  private
    def permitted_params
		params.permit(user: [:first_name, :last_name, :email, :avatar])
    end
end
