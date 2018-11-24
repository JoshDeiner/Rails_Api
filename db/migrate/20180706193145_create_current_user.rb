class CreateCurrentUser < ActiveRecord::Migration[5.2]
  def change
    create_table :current_users do |t|
      t.string :user_name
    end
  end
end
