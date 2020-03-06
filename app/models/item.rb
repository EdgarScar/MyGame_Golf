class Item < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_many :orders
  enum condition: [:Mint, :Good, :Fair, :Poor]
  has_one_attached :picture
  attr_accessor :current_user

  def self.search(search)
    if search 
      sub_category = SubCategory.where(name: search)
      if sub_category
        self.where(sub_category_id: sub_category)
      else 
        Item.all
      end 
    else 
      Item.all
    end 
  end 


end
