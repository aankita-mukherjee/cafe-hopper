class CreateCafes < ActiveRecord::Migration
  def change
    create_table :cafes do |t|
      t.string :cafename
      t.string :address
      t.text :goforits
      t.integer :phone
      t.string :hashtags
      t.text :features
      t.text :description

      t.timestamps null: false
    end
  end
end
