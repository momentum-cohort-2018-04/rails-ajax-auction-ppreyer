Rails.application.routes.draw do

  resources :items
  resources :bids
  resources :users
  resources :logins

  get 'logout', to: 'logins#destroy', as: 'logout'

  root 'items#index'
end
