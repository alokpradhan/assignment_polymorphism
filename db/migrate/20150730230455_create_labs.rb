class CreateLabs < ActiveRecord::Migration
  def change
    create_table :labs do |t|
      t.string :building
      t.integer :lab_capacity

      t.timestamps null: false
    end
  end
end
