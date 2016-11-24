class AddSupplierIdToFruit < ActiveRecord::Migration[5.0]
  def change
    add_column :fruits, :supplier_id, :integer
  end
end
