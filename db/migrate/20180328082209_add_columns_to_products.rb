class AddColumnsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :a_key, :string
    add_column :products, :model_small_path, :string
    add_column :products, :price_type, :integer
    add_column :products, :model_constr_path, :string
    add_column :products, :model_constr_small_path, :string
  end
end
