class RemoveCutPathFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :cut_path, :string
  end
end
