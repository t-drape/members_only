class RemoveDeviseColumns < ActiveRecord::Migration[8.0]
  def change
    remove_index :posts, name: "index_posts_on_reset_password_token"
  end
end

# t.string "title"
# t.text "body"
# t.string "email", default: "", null: false
# t.string "encrypted_password", default: "", null: false
# t.string "reset_password_token"
# t.datetime "reset_password_sent_at"
# t.datetime "remember_created_at"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
# t.integer "user_id"
# t.index ["email"], name: "index_posts_on_email", unique: true
# t.index ["reset_password_token"], name: "index_posts_on_reset_password_token", unique: true
# t.index ["user_id"], name: "index_posts_on_user_id"