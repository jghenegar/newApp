class AddNamesToTags < ActiveRecord::Migration[7.0]
  def change
    add_column :tags, :name, :string
  end
end
