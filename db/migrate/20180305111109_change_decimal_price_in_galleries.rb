class ChangeDecimalPriceInGalleries < ActiveRecord::Migration[5.1]
  def change
  	change_column :galleries, :price, :decimal, :precision => 5, :scale => 2
  end
end
