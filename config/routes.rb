Rails.application.routes.draw do
  root to: 'home#index'
  resources :tweets, only: [:new, :create]
  resources :images, only: [:create]
end
