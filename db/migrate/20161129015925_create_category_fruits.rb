class CreateCategoryFruits < ActiveRecord::Migration[5.0]
  def change
    create_table :category_fruits do |t|
      t.integer :fruit_id
      t.integer :category_id

      t.timestamps
    end
  end
end
