class CourseController < ApplicationController

#Save all instances of Course model to be displayed in the index view
  def index 
    @course = Course.all
  end 
#Display indivisual course using ID. Save all reviews of the course to display.
  def show
    @course = Course.find(params[:id])
    @can_add = !ProfileCourse.contains?(current_user, @course)  
    @reviews = @course.reviews
  end 
#Allow a photo to be uploaded or changed. Only availabe if current user is admin 
  def update
    @course = Course.find(params[:id])
    @course.picture.attach(params[:course][:picture])
    redirect_to courses_path
  end 
#User can add any course to their My Courses list in their profile
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
