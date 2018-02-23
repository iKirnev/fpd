class CreateGalleryPhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_photos do |t|
      t.references :gallery, index: true
      t.string :path
      t.boolean :is_main
    end
    add_foreign_key :gallery_photos, :galleries
  end
end
