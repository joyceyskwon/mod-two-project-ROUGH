Rails.application.routes.draw do
  resources :relationships
  resources :favorites
  resources :restaurants
  resources :users
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
