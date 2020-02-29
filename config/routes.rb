Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Home directory created for devise purposes
  root to: "home#index"

  #Show all items for sale/rent in the shop
  get "/shop", to: "shop#index", as: "shop"
  


  




end
