class AddConstructIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :construct_id, :integer
  end
end
