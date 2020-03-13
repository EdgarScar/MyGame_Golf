class Item < ApplicationRecord
  belongs_to :sub_category
  belongs_to :user
  has_many :orders
  enum condition: [:Mint, :Good, :Fair, :Poor]
  has_one_attached :picture
  attr_accessor :current_user


#Method to filter the search parameters if a sub_category is selected. If not, all items are displayed
  def self.search(search)
    if search 
      self.where(sub_category_id: search)
    else 
      Item.all
    end 
  end 


end
