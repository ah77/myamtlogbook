Rails.application.routes.draw do
  resources :engines
  resources :aircrafts
  resources :ac_make_models
  resources :technicians
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
