class ProfileController < ApplicationController

#Find the ID of the current user to generate the data for their profile page
  def index
    @user = User.find(current_user.id)
  end 

#Retrieves the saved courses and reviews from the current user to display in My Courses
  def courses
    @courses = current_user.courses
    @reviews = current_user.reviews
  end 

#Saves all items in the marketplace that belong to the current user to be displayed in My Listings
  def listings
    @items = current_user.items
  end 

end
