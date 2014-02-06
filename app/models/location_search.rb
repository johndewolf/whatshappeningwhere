class LocationSearch < ActiveRecord::Base
  validates_presence_of :longitude
  validates_presence_of :latitude
end
