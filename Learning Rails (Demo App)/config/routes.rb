Rails.application.routes.draw do
  resources :articles, only: [:show, :index]          # Required to get all the show and index routes for articles
  resources :users
  root 'pages#home'
  get 'about', to: 'pages#about'
end
