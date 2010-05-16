class User < ActiveRecord::Base
  has_many :parking_spaces
end
