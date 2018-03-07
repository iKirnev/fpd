class ChangeDecimal10PriceInGalleries < ActiveRecord::Migration[5.1]
  def change
  	change_column :galleries, :price, :decimal, :precision => 10, :scale => 2
  end
end
