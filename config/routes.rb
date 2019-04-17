Rails.application.routes.draw do
  resources :users
  resources :reviews, except: [:index, :show]
  resources :activities
  resources :neighborhoods, only: [:index, :show]
  resources :pictures, except: [:index, :show]
  resources :friendships, only: [:create, :destroy]
  root 'neighborhoods#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
end
