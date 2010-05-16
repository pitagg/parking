class VehicleType < ActiveRecord::Base
  has_many :parking_spaces
end
