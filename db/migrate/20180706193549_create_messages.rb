class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string "text"
      t.integer "conversation_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "user_name"
      t.integer "user_id"
      t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    end
  end
end
