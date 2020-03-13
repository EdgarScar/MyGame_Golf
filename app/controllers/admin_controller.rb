class AdminController < ApplicationController

#Save all instances of User model to display in the admin page
  def index
    @users = User.all
  end 

#If current User is admin, creates option to delete any current user 
  def destroy
    if current_user.email == "admin@gmail.com"
      User.destroy(params[:id])
      redirect_to admin_path
    else 
      flast[:alert] = "Get out of Admin mofo"
    end 
  end 
  
end
