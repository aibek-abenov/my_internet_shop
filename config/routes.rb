Rails.application.routes.draw do

  root to: "shoes#index"
  get 'cart', to: 'cart#index', as: 'cart_index'
  post 'cart/add/:id', to: 'cart#add', as: 'cart_add'
  delete 'cart/remove(/:id(/:all))', to: 'cart#delete', as: 'cart_delete'
  devise_for :users
  resources :shoes
  get 'category/:id', to: "shoes#category"
  get 'size', to: 'size#index', as: 'size_index'
  post 'create/order', to: 'cart#create_order', as: 'create_order'
end
