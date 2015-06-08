class AddNameToPrompts < ActiveRecord::Migration
  def change
    add_column :prompts, :name, :string
  end
end
