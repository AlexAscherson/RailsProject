class CreateUserPrompts < ActiveRecord::Migration
  def change
    create_table :user_prompts do |t|
      t.integer :user_id
      t.integer :prompts_id

    end
  end
end
