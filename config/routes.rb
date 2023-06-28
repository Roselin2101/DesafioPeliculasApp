Rails.application.routes.draw do
  resources :movies
  resources :documentary_films
  resources :series
  root 'movies#index'
end
