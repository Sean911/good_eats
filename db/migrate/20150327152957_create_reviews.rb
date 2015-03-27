class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.text :body, null: false
      t.integer :restaurant_id, null: false

      t.timestamps null: false
    end
  end
end
