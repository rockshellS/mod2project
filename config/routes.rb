Rails.application.routes.draw do
  resources :categories
  resources :likes
  resources :listings
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "/users/:id/listings", to: 'users#listings' , as: "user_listings"

  get "/home", to: 'application#home'

  delete '/sessions/destroy', to: 'sessions#destroy'

  get "/users/:id/confirm_delete", to: "users#confirm_delete", as: "confirm_delete"


  get "/listings/:id/confirm_delete", to: "listings#confirm_delete", as: "confirm_delete_listing"

  
  root 'application#home'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end