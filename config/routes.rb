Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "home#index"

resources :orders
resources :sessions
resources :lunches
resources :line_items, only: [:new, :create, :update, :destroy, :show]
resources :users, only: [:new, :create, :show, :index]
resources :students, only: [:new, :create, :show, :destroy]

resources :charges


# get "/students", to: "students#show"
get "signup", to: "users#new", as: "signup"
get "signin", to: "sessions#new", as: "signin"
post "signin", to: "sessions#create"
delete "signout", to: "sessions#destroy", as: "signout"

post "/orders/:id/payment", to: "orders#payment"

end
