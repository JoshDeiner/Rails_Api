class CreateOldStuffs < ActiveRecord::Migration[5.2]
  def change
    create_table :old_stuffs do |t|
    t.string "title"
    t.string "description"
    t.string "link"
    t.string "image"
    t.integer "match_id"
    t.belongs_to :user, index: true
    end
  end
end
