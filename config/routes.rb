Rails.application.routes.draw do
  resources :time_of_days
  resources :users
  resources :reviews, except: [:index, :show]
  resources :activities
  resources :neighborhoods
  root 'neighborhoods#index'
end
