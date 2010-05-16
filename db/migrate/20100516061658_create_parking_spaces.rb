class CreateParkingSpaces < ActiveRecord::Migration
  def self.up
    create_table :parking_spaces do |t|
      t.integer :amount
      t.integer :amount_free
      t.integer :park_id
      t.integer :vehicle_type_id
      t.integer :user_id
      t.references :park, :user, :vehicle_type
      t.timestamps
    end
  end

  def self.down
    drop_table :parking_spaces
  end
end
