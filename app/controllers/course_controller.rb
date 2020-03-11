class CourseController < ApplicationController

  def index 
    @course = Course.all
    #trying to link boolean in model with no. of holes function in the model
    #@holes = Course.num_of_holes
  end 

  def show
    @course = Course.find(params[:id])
    @can_add = !ProfileCourse.contains?(current_user, @course) 
  end 

  def update
    @course = Course.find(params[:id])
    @course.picture.attach(params[:course][:picture])
    redirect_to courses_path
  end 

  def add
    current_user.courses.push(Course.find(params[:id]))
      if current_user.save
        flash[:notice] = "Added to My Courses"
        redirect_to profile_courses_path
      else 
        flash[:alert] = "Opps! Something went wrong"
        redirect_back(fallback_location: courses_path)
      end
  end     


end
