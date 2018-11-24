class CreateUserResources < ActiveRecord::Migration[5.2]
  def change
    create_table :user_resources do |t|
      t.integer "user_id"
      t.string "slug"
      t.string "wrestling_name"
      t.string "image_url"
      t.string "source_link"
      t.string "comments"
      t.integer "check_out_count"
      t.integer "match_id"
      t.integer "wrestling_resource_id"
    end
  end
end
