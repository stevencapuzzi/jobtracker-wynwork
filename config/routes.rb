Rails.application.routes.draw do

  root 'jobs#index'
  resources :jobs
  resources :admins
  resources :applicants
  resources :sessions

  get 'logout', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
