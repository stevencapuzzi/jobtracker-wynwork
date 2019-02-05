Rails.application.routes.draw do
  resources :jobs
  resources :admins
  resources :applicants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
