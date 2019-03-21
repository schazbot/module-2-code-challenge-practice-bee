class RenameBeesIdColumnAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :flights, :bee_ids, :bee_id
    rename_column :flights, :flower_ids, :flower_id
  end
end
