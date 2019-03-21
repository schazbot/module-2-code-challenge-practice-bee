class CreateFlightsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :flights_tables do |t|
      t.references :bees, foreign_key: true
      t.references :flowers, foreign_key: true
    end
  end
end
