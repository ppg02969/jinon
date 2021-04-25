Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  patch 'users/:id' => 'users#update'

  root to: 'tweets#index'
  post 'tweets/new' => 'tweets#new'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: [:create, :new]
  end
end
