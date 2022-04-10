class AddGalleryFileToGallery < ActiveRecord::Migration[5.0]
  def change
    add_column :galleries, :gallery, :string, array: true, default: []
  end
end
