class AdminController < ApplicationController

  def index
    @users = User.all
  end 

  def destroy
    if current_user.email == "admin@gmail.com"
      User.destroy(params[:id])
      redirect_to admin_path
    else 
      flast[:alert] = "Get out of Admin mofo"
    end 
  end 
  
end
