Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Home directory created for devise purposes
  root to: "home#index"

  #Show all items for sale/rent in the shop
  #get "/shop", to: "shop#index", as: "shop"

  #Create item to sell/rent
  #get "shop/new", to: "shop#new", as: "new_item"
  #post "shop", to: "shop#create", as: "create_item"

  #Show all items for sale/rent in the shop but use Items Controller
  get "/item", to: "item#index", as: "items"

  #Create item to sell/rent
  get "/item/new", to: "item#new", as: "new_item"
  post "/item", to: "item#create", as: "create_item"

  
  

end
