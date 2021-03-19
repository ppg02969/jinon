Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets, only: [:index, :new, :create]
end
