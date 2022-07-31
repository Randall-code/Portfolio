Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'project#index'
  resources :project
  # Defines the root path route ("/")
  # root "articles#index"
end
