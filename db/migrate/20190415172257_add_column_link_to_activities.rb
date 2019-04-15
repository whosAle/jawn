class AddColumnLinkToActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :url_link, :string
  end
end
