class RemoveIndexFromFlightTablee < ActiveRecord::Migration[5.2]
  def change

    remove_column :flights, :index_flights_on_bees_id
    remove_column :flights, :index_flights_on_flowers_id
  end
end
