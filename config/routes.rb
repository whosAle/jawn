Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :activities
  resources :neighborhoods

  root 'neighborhoods#index'
end
