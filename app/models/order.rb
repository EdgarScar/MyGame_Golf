class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  
  attr_accessor :current_user

end
