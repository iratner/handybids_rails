Rails.application.routes.draw do
  devise_for :users
  devise_for :contractors

  namespace :contractors do
    root to: 'dashboard#index'
  end
  
  root to: 'dashboard#index'
  
  
  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  resources :projects
  resources :user
end
