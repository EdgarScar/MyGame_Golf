class ProfileController < ApplicationController

  def index
  end 



  def courses
    @courses = current_user.courses
  end 


end
