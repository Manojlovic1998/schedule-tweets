Rails.application.routes.draw do
  get "about", to: "about#index"
  
  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"
  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"


  delete "log_out", to: "sessions#destroy"

  root to: "main#index"
end
