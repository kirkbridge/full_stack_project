class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.integer :category_id
      t.integer :stock_quantity
      t.decimal :price

      t.timestamps
    end
  end
end
