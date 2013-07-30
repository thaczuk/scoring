Scoring::Application.routes.draw do
  root to: 'competitions#index'

  get '/about', to: 'static_pages#about'

  resources :competitions
  resources :athletes
  resources :events
  resources :competition_categories
  resources :users
end
