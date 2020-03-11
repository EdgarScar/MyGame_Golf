class CreateProfileCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :profile_courses do |t|
      t.references :user, foreign_key: true
      t.references :course, foreign_key: true
      t.boolean :played
      t.integer :score
      t.boolean :rated
      t.boolean :reviewed

      t.timestamps
    end
  end
end
