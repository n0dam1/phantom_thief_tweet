Rails.application.routes.draw do
  root to: 'images#new'
  resources :images, only: [:create]
  resources :tweets, only: [:create]
end
