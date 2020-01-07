Rails.application.routes.draw do
  resources :doors
  resources :rec_users
  resources :windows
  resources :walls
  resources :zones
  resources :hvac_systems
  resources :dhw_generators
  resources :glasses
  resources :constructions
  resources :compliances
  resources :generals
  resources :drops
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'drops#index'
end
