Rails.application.routes.draw do
  root 'application#welcome'

  resources :reports
  resources :users
  resources :congregations
  resources :sessions, only: [:create, :destroy]
end
