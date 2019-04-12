class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :rating
      t.integer :user_id
      t.integer :activity_id
      t.timestamps
    end
  end
end
