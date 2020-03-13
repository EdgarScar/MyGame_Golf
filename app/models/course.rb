class Course < ApplicationRecord
  enum difficulty: [:Beginner, :Intermediate, :Advanced, :Expert]
  has_one_attached :picture
  has_many :profile_courses
  has_many :reviews, as: :rateable
  has_one :address, as: :addressable
end 
