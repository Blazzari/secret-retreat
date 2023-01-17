puts "new seed launched, destroying old users !"

User.destroy_all

puts "create 3 new users !"

User.create!({email: "user1@mail.com", password: "u1u1u1" })
User.create!({email: "user2@mail.com", password: "u2u2u2" })
User.create!({email: "user3@mail.com", password: "u3u3u3" })

puts "3 new users created !"

# create_table "users", force: :cascade do |t|
#   t.string "email", default: "", null: false
#   t.string "encrypted_password", default: "", null: false
#   t.string "reset_password_token"
#   t.datetime "reset_password_sent_at"
#   t.datetime "remember_created_at"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
#   t.index ["email"], name: "index_users_on_email", unique: true
#   t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
# end
