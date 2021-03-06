class ProfileCourseController < ApplicationController

#Allows a user to remove a course from their My Course list
  def destroy
    course_id = ProfileCourse.course_list_course_id(current_user, params[:id])
    ProfileCourse.destroy(course_id)
    flash[:notice] = "Course was removed from your course list"
    redirect_to profile_courses_path
  end
  
end
