class AddingUserToLocationSearch < ActiveRecord::Migration
  def up
    add_column :location_searches, :user_id, :integer, null: false
  end

  def down
    remove_column :location_searches, :user_id
  end
end
