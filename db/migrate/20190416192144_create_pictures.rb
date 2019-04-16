class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :img_url
      t.string :caption
      t.integer :review_id
      t.timestamps
    end
  end
end
