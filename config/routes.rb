Rails.application.routes.draw do
  #resources :likes
  #resources :listings
  #resources :users
  #get '/listing', to: index
  resources :listings, only: :index
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
