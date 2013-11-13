Scoring::Application.routes.draw do
  root to: 'competitions#index'

  get '/login',     to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  get '/logout',   to: "sessions#destroy"

  get '/register',   to: 'users#new'

  get '/about', to: 'static_pages#about'

  resources :competitions
  resources :athletes
  resources :events
  resources :competition_categories
  resources :users
  resources :event_athletes
end
