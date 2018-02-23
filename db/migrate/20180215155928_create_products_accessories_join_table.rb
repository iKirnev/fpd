class CreateProductsAccessoriesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :accessories do |t|
      t.index [:product_id, :accessory_id]
      t.index [:accessory_id, :product_id]
    end
  end
end
