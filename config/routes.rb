Rails.application.routes.draw do
  get "users", to: "users#index"
  get "users/new", to: "users#new"
  get "users/:id", to: "users#show", as: :user
  post "users", to: "users#create"

  get "dogs", to: "dogs#index"
  get "dogs/new", to: "dogs#new"
  get "dogs/:id", to: "dogs#show", as: :dog   #Used for redirect_to
  post "dogs", to: "dogs#create"  #Used for form_for
  
end
