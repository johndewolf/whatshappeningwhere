class CreateLocationSearches < ActiveRecord::Migration
  def change
    create_table :location_searches do |t|
      t.float :longitude
      t.float :latitude
      t.string :address 
      t.timestamps
    end
  end
end
