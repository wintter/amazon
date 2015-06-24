class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.text :adress
      t.string :zipcode
      t.string :city
      t.string :phone

      t.timestamps null: false
    end
    add_reference :addresses, :country, index: true, foreign_key: true
  end
end
