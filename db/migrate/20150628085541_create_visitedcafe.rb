class CreateVisitedcafe < ActiveRecord::Migration
  def change
    create_table :visitedcafe do |t|
      t.integer :user_id
      t.integer :cafe_id

      t.timestamps null: false
    end
  end
end
