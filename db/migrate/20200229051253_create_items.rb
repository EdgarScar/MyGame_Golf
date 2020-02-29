class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :sub_category, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :rent
      t.text :description
      t.string :brand
      t.string :model
      t.string :age
      t.integer :condition
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
