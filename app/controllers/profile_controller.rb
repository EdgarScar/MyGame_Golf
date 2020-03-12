class ProfileController < ApplicationController

  def index
    @user = User.find(current_user.id)
  end 



  def courses
    @courses = current_user.courses
    @reviews = current_user.reviews
  end 

  def listings
    @items = current_user.items
  end 


end
