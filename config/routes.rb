Rails.application.routes.draw do
  root "books#index"

  resources :books, only: [:index, :show]
  resources :genres, only: [:show]

  get "about", to: "pages#about"
end