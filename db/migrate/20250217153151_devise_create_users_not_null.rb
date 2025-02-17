class DeviseCreateUsersNotNull < ActiveRecord::Migration[8.0]
  def change
    remove_column :users, :name, :string
    add_column :users, :name, :string, null: false
  end
end
