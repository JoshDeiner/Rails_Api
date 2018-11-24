class CreateConversations < ActiveRecord::Migration[5.2]
  def change
    create_table :conversations do |t|
      t.string :title
      t.bigint :wrestling_resource_id
      t.integer "category_id"
    end
  end
end
