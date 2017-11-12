Rails.application.routes.draw do
  root 'pages#index'

  get 'pages/index'

  resources :log_entries
  resources :custom_cats
  resources :work_locations
  resources :clients
  resources :supervisors
  resources :engines
  resources :aircrafts
  resources :ac_make_models
  resources :technicians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
