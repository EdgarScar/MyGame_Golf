class Item < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_many :orders
  enum condition: [:Mint, :Good, :Fair, :Poor]
  has_one_attached :picture
  attr_accessor :current_user

end
