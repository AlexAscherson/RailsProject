class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :prompt_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
