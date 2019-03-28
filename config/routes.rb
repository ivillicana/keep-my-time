Rails.application.routes.draw do
  root 'application#welcome'

  resources :reports
  resources :users
  resources :congregations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
