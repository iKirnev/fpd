class CreateUses < ActiveRecord::Migration[5.1]
  def change
    create_table :uses do |t|
      t.string :name
      t.string :description
    end
  end
end
