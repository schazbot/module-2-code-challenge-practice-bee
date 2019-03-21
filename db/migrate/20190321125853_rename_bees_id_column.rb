class RenameBeesIdColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :bees_id, :bee_ids
    rename_column :flights, :flowers_id, :flower_ids

  end
end
