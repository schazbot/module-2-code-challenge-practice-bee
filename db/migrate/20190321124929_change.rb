class Change < ActiveRecord::Migration[5.2]
  def change
    remove_column :flights, :bees_id, :index
    remove_column :flights, :flowers_id, :index
  end
end
