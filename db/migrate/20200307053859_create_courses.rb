class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.boolean :holes
      t.string :length
      t.text :description
      t.integer :difficulty
      t.decimal :priceeighteen, precision: 10, scale: 2
      t.decimal :pricenine, precision: 10, scale: 2
      t.integer :phone

      t.timestamps
    end
  end
end
