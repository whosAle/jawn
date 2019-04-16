Rails.application.routes.draw do
  resources :time_of_days
  resources :users
  resources :reviews, except: [:index, :show]
  resources :activities
  resources :neighborhoods
  root 'neighborhoods#index'

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
end
