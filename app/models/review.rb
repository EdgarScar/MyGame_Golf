class Review < ApplicationRecord
  belongs_to :rateable, polymorphic: true
  belongs_to :user
end
