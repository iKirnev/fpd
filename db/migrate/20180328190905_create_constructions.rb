class CreateConstructions < ActiveRecord::Migration[5.1]
  def change
    create_table :constructions do |t|
      t.string :name
      t.text :description
    end
  end
end
