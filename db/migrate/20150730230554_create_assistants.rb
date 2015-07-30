class CreateAssistants < ActiveRecord::Migration
  def change
    create_table :assistants do |t|
      t.integer :duty_id
      t.string :duty_type
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
    add_index :assistants, [:duty_id, :duty_type] 
  end
end
