Rails.application.routes.draw do

  resources :meetings
  root 'jobs#index'
  resources :jobs do
    resources :followups
  end
  resources :admins
  resources :applicants
  resources :sessions
  resources :about
  resources :event


  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'login', to: 'sessions#new', as: 'login' 
  get 'signup', to: 'applicants#new', as: 'signup' 
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
