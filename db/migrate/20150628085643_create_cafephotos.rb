class CreateCafephotos < ActiveRecord::Migration
  def change
    create_table :cafephotos do |t|
      t.integer :cafe_id
      t.string :photourl

      t.timestamps null: false
    end
  end
end
