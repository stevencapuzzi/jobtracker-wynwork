Rails.application.routes.draw do

  root 'jobs#index'
  resources :jobs
  resources :admins
  resources :applicants
  resources :sessions
  resources :about

  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'login', to: 'sessions#new', as: 'login' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
