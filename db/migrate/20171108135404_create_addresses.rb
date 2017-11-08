class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :street
      t.string :city
      t.integer :province_id
      t.string :postal_code

      t.timestamps
    end
  end
end
