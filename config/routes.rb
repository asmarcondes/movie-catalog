Rails.application.routes.draw do
  resources :movies
  resources :actors
  resources :reviews do
    member do
      patch :approve
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movies#index'
end
