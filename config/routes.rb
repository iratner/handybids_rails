Rails.application.routes.draw do
  devise_for :users
  devise_for :contractors

  namespace :contractors do
    root to: 'dashboard#index'
    resources :projects, except: [:create, :new, :destroy]
  end

  root to: 'dashboard#index'

  namespace :api do
    namespace :v1 do
      resources :projects
    end
  end

  resources :projects
end
