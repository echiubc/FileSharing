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

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

  get "upload", to: "upload#new"
  post "upload", to: "upload#upload"

  root to: "main#index"
end
