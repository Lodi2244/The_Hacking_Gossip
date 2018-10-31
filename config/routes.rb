Rails.application.routes.draw do
  resources :gossips, except: (:destroy)
  root "gossips#index"
end
