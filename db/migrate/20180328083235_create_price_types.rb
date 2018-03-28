class CreatePriceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :price_types do |t|
      t.string :name
      t.string :price_range
    end
  end
end
