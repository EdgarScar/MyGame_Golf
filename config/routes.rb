Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    registrations: 'user/registrations'
  }

  #Home directory created for devise purposes
  root to: "home#index", as: "home"

  #Add address to User
  get "/user/:id", to: "home#address", as: "new_address"
  post "/user/:id", to: "home#create", as: "create_address"

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
  get "/listings", to: "profile#listings", as: "listings"

  #Completed order page 
  get "/order/complete", to: "order#complete", as: "order_complete"
  get "/order/failed", to: "order#failed"
  
  #Add item to an order
  get "/order/:id", to: "order#new", as: "new_order"
  post "/order/webhook", to: "order#webhook"

  #Display all courses in a list 
  get "/course", to: "course#index", as: "courses"

  #Add course to course list of current user
  get "/course/add", to: "course#add", as: "add_course_to_list"

  #Remove course from course list of current user
  delete "course/:id", to: "profile_course#destroy", as: "profile_course_destroy"

  #Display individual course
  get "/course/:id", to: "course#show", as: "course"

  #Add photo to course
  patch "/course/:id", to: "course#update", as: "update_course"

  #View profile page of current user 
  get "/profile/", to: "profile#index", as: "profile"
  get "/profile/courses", to: "profile#courses", as: "profile_courses"

  #Add add review of a user or a course
  get "/reviews/new", to: "reviews#new", as:"new_review"
  post "/reviews", to: "reviews#create"

  #Add Admin pages
  get "/admin", to: "admin#index", as: "admin"

  #Admin can delete users 
  delete "/admin/:id", to: "admin#destroy", as: "destroy_user"

end
