class CreateStaticPages < ActiveRecord::Migration[5.1]
  def change
    create_table :static_pages do |t|
      t.text :description
      t.text :customer_message
      t.string :contact_email
      t.text :contact_phone
      t.text :hours

      t.timestamps
    end
  end
end
