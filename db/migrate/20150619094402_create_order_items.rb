class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|

      t.decimal :price, precision: 5, scale: 2
      t.integer :quantity
      t.timestamps null: false
    end
    add_reference :order_items, :book, index: true, foreign_key: true
    add_reference :order_items, :order, index: true, foreign_key: true
  end
end
