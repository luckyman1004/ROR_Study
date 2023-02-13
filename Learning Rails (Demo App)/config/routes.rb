Rails.application.routes.draw do
  resources :articles, only: [:show]          # Required to get all the show routes for articles
  resources :users
  root 'pages#home'
  get 'about', to: 'pages#about'
end
