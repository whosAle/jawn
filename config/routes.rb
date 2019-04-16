Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :activities
  resources :neighborhoods

  root 'neighborhoods#index'
  
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
