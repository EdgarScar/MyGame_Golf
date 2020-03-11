class ProfileController < ApplicationController

  def index
    @name = current_user[:first_name]
  end 



  def courses
    @courses = current_user.courses
  end 

  def listings
    @items = current_user.items
  end 


end
