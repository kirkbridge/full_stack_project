class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :address_id

      t.timestamps
    end
  end
end
