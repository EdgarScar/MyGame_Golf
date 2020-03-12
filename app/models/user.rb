class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders
  has_many :items
  has_one_attached :picture
  has_one :address
  accepts_nested_attributes_for :address
  has_many :profile_courses
  has_many :courses, through: :profile_courses
  has_many :reviews, as: :rateable
end
