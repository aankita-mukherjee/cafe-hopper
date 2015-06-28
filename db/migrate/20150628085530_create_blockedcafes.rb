class CreateBlockedcafes < ActiveRecord::Migration
  def change
    create_table :blockedcafes do |t|
      t.integer :user_id
      t.integer :cafe_id

      t.timestamps null: false
    end
  end
end
