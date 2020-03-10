class Address < ApplicationRecord
  belongs_to :addressable, polymorphic: true

  def address
    [number, street, suburb, city, state, country].compact.join(', ')
  end

end
