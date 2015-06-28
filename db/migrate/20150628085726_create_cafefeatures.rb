class CreateCafefeatures < ActiveRecord::Migration
  def change
    create_table :cafefeatures do |t|
      t.integer :cafe_id
      t.string :featurename

      t.timestamps null: false
    end
  end
end
