class RenameProductIdToFruitId < ActiveRecord::Migration[5.0]
  def change
    rename_column :orders, :product_id, :fruit_id
  end
end
