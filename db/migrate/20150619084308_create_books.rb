class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :description
      t.decimal :price, precision: 5, scale: 2
      t.integer :in_stock
      t.timestamps null: false
    end
    add_reference :books, :author, index: true, foreign_key: true
    add_reference :books, :category, index: true, foreign_key: true
  end
end
