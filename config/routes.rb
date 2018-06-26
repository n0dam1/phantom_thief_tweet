Rails.application.routes.draw do
  root to: 'images#new'
  resources :images, only: [:create, :show, :new]
end
