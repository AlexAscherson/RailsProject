class AddContentToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :content, :string
  end
end
