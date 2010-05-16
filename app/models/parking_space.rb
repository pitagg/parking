class ParkingSpace < ActiveRecord::Base
  
  #Referências
  belongs_to :park
  belongs_to :user
  belongs_to :vehicle_type
  
  # Validações
  validates_presence_of :park_id
  validates_presence_of :user_id
  validates_presence_of :vehicle_type_id
  validates_presence_of :amount
  validates_presence_of :amount_free  
end
