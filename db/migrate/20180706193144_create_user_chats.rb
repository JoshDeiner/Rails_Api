class CreateUserChats < ActiveRecord::Migration[5.2]
  def change
    create_table :user_chats do |t|
      t.bigint :user_id
      t.bigint :chats_id
    end
  end
end
