class CourseController < ApplicationController

  def index 
    @course = Course.all
  end 

  def show
    @course = Course.find(params[:id])
  end 

  def update
    @course = Course.find(params[:id])
    @course.picture.attach(params[:course][:picture])
  end 

end
