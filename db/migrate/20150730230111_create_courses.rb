class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :building
      t.string :title
      t.integer :class_capacity

      t.timestamps null: false
    end
  end
end
