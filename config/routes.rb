Rails.application.routes.draw do
  root to: "shoes#index"
  devise_for :users

  resources :shoes
  get 'category/:id', to: "shoes#category"
end
