Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :users, only: [:index, :edit, :update, :destroy]
  resources :feeds, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
