Rails.application.routes.draw do

  root 'sessions#new'

  resources :categories, only: [:index, :show]
  resources :likes, only: [:index, :show, :new, :create, :destroy]
  resources :listings, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :new, :create, :edit, :update, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
