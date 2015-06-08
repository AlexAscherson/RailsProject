class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.integer :class_id
      t.datetime :datetime

      t.timestamps null: false
    end
  end
end
