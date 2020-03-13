class ProfileCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

#Determines whether the current user already has a course saved in their My Courses list
  def self.contains?(current_user, course)
    if current_user
      return current_user.courses.where(id: course).length > 0
    else 
      return true
    end 
  end
#Determines whether the current user already has a course saved in their My Courses list
  def self.course_list_course_id(current_user, course)
    return ProfileCourse.where("course_id = ? AND user_id = ?", course, current_user).first.id
  end 
  
end 
