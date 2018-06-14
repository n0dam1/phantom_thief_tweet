Rails.application.routes.draw do
  root to: 'home#index'
  resources :tweet, only: [:new, :create]
end
