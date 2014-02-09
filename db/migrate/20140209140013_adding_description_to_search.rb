class AddingDescriptionToSearch < ActiveRecord::Migration
  def up
    add_column :location_searches, :description, :string
  end

  def down
    remove_column :location_searches, :description
  end
end
