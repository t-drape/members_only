class AddAssociations < ActiveRecord::Migration[8.0]
  def change
    add_reference :posts, :user, foreign_key: true
  end
end
