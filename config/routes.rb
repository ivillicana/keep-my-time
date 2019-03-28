Rails.application.routes.draw do
  root 'application#welcome'

  resources :reports
  resources :users
  resources :congregations
  resources :sessions, only: [:new, :create]
  delete 'sessions', to: 'sessions#destroy', as: 'session'
end
