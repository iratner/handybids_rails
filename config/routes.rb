Rails.application.routes.draw do
  devise_for :contractors
  
  
  unauthenticated do
			root to: 'pages#home', as: :unauthenticated_contractor
	end
  
  authenticated :contractor do
		root to: 'dashboard#index', as: :authenticated_user
	end
  
  # You can have the root of your site routed with "root"
	root 'home#index'
  
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  resources :projects
end
