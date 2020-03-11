class ProfileCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  def self.contains?(current_user, course)
    return current_user.courses.where(id: course).length > 0
  end

  def self.course_list_course_id(current_user, course)
    return ProfileCourse.where("course_id = ? AND user_id = ?", course, current_user).first.id
  end 

  
end 
