Rails.application.routes.draw do
  # get 'shoes/index'
  # get 'shoes/new', to: "shoes#new"
  # get 'shoes/:id', to: "shoes#show"


  # post 'shoes/create', to: "shoes#create"
  # get 'shoes/edit/:id', to: 'shoes#edit'
  # post 'shoes/update/:id', to: 'shoes#update'

  root to: "shoes#index"
  resources :shoes
  get 'category/:id', to: "shoes#category"
end
