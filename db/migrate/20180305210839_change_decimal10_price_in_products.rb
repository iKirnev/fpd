class ChangeDecimal10PriceInProducts < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :price, :decimal, :precision => 10, :scale => 2
  end
end
