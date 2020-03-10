class Course < ApplicationRecord
  enum difficulty: [:beginner, :intermediate, :advanced, :expert]
  has_one_attached :picture
end
