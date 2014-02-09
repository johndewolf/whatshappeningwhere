class LocationSearch < ActiveRecord::Base
  geocoded_by :address
  before_validation :geocode, :if => :address_changed?
  validates :address, uniqueness: true
  validate :returns_long_and_lat
  belongs_to :user


  def returns_long_and_lat
    unless longitude != nil && latitude != nil
      errors[:address] << 'This does not return a valid location'
    end
  end
end