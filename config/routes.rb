Rails.application.routes.draw do
  
  get '/' => 'sessions#welcome'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  delete '/logout' => 'sessions#destroy'

  # don't need post signup because we already have a route for it. 
  # post '/signup' => 'users#create' (If we want to have this)

  resources :comments
  resources :dogs
  resources :photos
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
