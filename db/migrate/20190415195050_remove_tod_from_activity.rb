class RemoveTodFromActivity < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :tod
  end
end
