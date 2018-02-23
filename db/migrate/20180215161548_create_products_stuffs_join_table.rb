class CreateProductsStuffsJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :products, :stuffs do |t|
       t.index [:product_id, :stuff_id]
       t.index [:stuff_id, :product_id]
    end
  end
end
