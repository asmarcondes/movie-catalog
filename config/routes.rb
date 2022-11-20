Rails.application.routes.draw do
  resources :movies
  resources :reviews
  resources :actors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end