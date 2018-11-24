class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.string "user_name"
      t.integer "resource_id"
      t.integer "category_id"
    end
  end
end
