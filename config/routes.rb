Rails.application.routes.draw do

  root 'sessions#welcome'
  get '/login', to: 'sessions#new', as: 'login'
  post  '/login', to: "sessions#create"
  post '/logout', to: "sessions#destroy", as: 'logout'
  get '/secret', to: "secrets#show", as: 'secret'
end
