class DropFlights < ActiveRecord::Migration[5.2]
  def change
    drop_table :flights
  end
end
