class CreateGallery < ActiveRecord::Migration[5.1]
  def change
    create_table :galleries do |t|
      t.integer :product_id
      t.string :name
      t.string :description
      t.decimal :price
    end
  end
end
