class CreateLocationSearches < ActiveRecord::Migration
  def change
    create_table :location_searches do |t|
      t.float :longitude, null: false
      t.float :latitude, null: false

      t.timestamps
    end
  end
end
