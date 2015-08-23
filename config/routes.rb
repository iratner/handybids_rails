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

  patch '/estimates/:id/accept' => 'estimates#accept', as: 'estimate_accept'
  resources :estimates
  
  resources :projects do
    
  end
end
