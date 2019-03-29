Rails.application.routes.draw do
  root 'application#welcome'

  resources :users, only: [:new, :create, :edit, :update, :destroy]
  get 'profile', to: 'users#show', as: 'profile'
  get 'request-admin', to: 'users#request_admin', as: 'request_admin'
  scope :users do
    resources :reports
  end
  resources :congregations
  resources :sessions, only: [:new, :create]
  delete 'sessions', to: 'sessions#destroy', as: 'session'
end
