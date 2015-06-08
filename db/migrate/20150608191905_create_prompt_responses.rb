class CreatePromptResponses < ActiveRecord::Migration
  def change
    create_table :prompt_responses do |t|
      t.integer :prompt_id
      t.integer :response_id

      t.timestamps null: false
    end
  end
end
