class ChangeFlightsTableName < ActiveRecord::Migration[5.2]
  def change
    rename_table :flights_tables, :flights
  end
end
