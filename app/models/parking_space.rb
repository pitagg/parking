class ParkingSpace < ActiveRecord::Base
  belongs_to :park
  belongs_to :user
  belongs_to :vehicle_type
end
