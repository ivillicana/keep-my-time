Rails.application.routes.draw do
  root 'application#welcome'

  resources :users
  scope :users do
    resources :reports
  end
  resources :congregations
  resources :sessions, only: [:new, :create]
  delete 'sessions', to: 'sessions#destroy', as: 'session'
end
