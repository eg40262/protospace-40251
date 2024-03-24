Rails.application.routes.draw do
  devise_for :users
  root to:'prototypes#index'
  resources :prototypes
  resources :users, only: :show
  resources :comments, only: :create
  
  resources :prototypes do
    resources :comments, only: [:create]
  end
end
