Rails.application.routes.draw do
  resources :categories
  resources :likes
  resources :listings
  resources :users
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
