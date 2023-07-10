Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # GET /about
  get "about-us", to: "about#index", as: :about

  get "editpassword", to: "passwords#edit", as: :edit_password
  patch "editpassword", to: "passwords#update"

  get "sign-up", to: "registrations#new", as: :signup
  post "users", to: "registrations#create"

  get "sign-in", to: "sessions#new", as: :signin
  post "sign-in", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  root to: "main#index"
end
