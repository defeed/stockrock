class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :stock_name
      t.decimal :price
      t.integer :quantity
      t.decimal :percentage
      t.integer :years

      t.timestamps
    end
  end
end
