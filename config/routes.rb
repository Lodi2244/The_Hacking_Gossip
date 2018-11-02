Rails.application.routes.draw do
  get 'gossips/index', to: 'gossips#index'
  get 'gossips/show/:id', to: 'gossips#show'
  get 'users/create', to: 'users#create'
  get 'registration/new', to: 'registration#new'
  get 'comments/new', to: 'comments#new'
  resources :gossips
  resources :comments
  resources :users
  root 'gossips#home'
end
