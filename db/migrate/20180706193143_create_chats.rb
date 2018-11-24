class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :title
      t.string :content
      t.integer "conversation_id"
    end
  end
end
