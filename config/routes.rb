Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }

  #Home directory created for devise purposes
  root to: "home#index"

  #Show all items for sale/rent in the shop but use Items Controller
  get "/item", to: "item#index", as: "items"

  #Create item to sell/rent
  get "/item/new", to: "item#new", as: "new_item"
  post "/item", to: "item#create", as: "create_item"

  #Show individual item
  get "/item/:id", to: "item#show", as: "item"

  #Delete Item Listing if owned by current user
  delete "/item/:id/delete", to: "item#destroy", as: "destroy_item"

  #Show listings belonging to current user
  get "/listings", to: "item#listings", as: "listings"

  #Completed order page 
  get "/order/complete", to: "order#complete", as: "order_complete"
  get "/order/failed", to: "order#failed"
  
  #Add item to an order
  get "/order/:id", to: "order#new", as: "new_order"

end
