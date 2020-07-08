Rails.application.routes.draw do
  get 'shoes/index'
  get 'shoes/:id', to: "shoes#show"

  root to: "shoes#index"
end
