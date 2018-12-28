Rails.application.routes.draw do
  resources :reservations
  resources :favorites
  resources :users
  
  get '/users/new', to: 'users#new'
  resources :relationships
  resources :restaurants, only: [:index, :show]
  resources :companies, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
