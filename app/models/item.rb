class Item < ApplicationRecord
  belongs_to :sub_category
  belongs_to :users
  has_many :orders
  enum condition: [:mint, :good, :fair, :poor]
end
