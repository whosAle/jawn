class CreateTimeOfDays < ActiveRecord::Migration[5.2]
  def change
    create_table :time_of_days do |t|
      t.integer :activity_id
      t.boolean :morning
      t.boolean :afternoon
      t.boolean :evening
      t.boolean :late_night
      t.timestamps
    end
  end
end
