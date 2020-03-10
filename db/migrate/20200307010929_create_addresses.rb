class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :addressable, polymorphic: true
      t.string :number
      t.string :street
      t.string :suburb
      t.string :city
      t.string :state
      t.string :country
      t.string :postcode
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
