Rails.application.routes.draw do
  devise_for :users
  root 'abouts#index'
  resources :abouts, only: [:index]
end
