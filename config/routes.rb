Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'exercices#home'

  # Defines the root path route ("/")
  resources :exercices, only: %i[home show]
end
