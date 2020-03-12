class Course < ApplicationRecord
  enum difficulty: [:Beginner, :Intermediate, :Advanced, :Expert]
  has_one_attached :picture
  has_many :profile_courses
  has_many :reviews, as: :rateable

  #trying to put in a boolean to input whether the no. of holes from the boolean in the model is 18 or 9
  # def self.num_of_holes
  #   @course = Course.find(params[:id])
  #     if @course.holes?
  #       puts "18 Holes"
  #     else 
  #       puts "9 Holes"
  #     end 
  # end 
end 
