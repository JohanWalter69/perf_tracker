Rails.application.routes.draw do
  get 'notes/edit'
  get 'notes/update'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'exercices#home'

  # Defines the root path route ("/")
  resources :exercices, only: %i[home show] do
    resources :loads, only: %i[edit update]
    resources :notes, only: %i[edit update]
  end
end
