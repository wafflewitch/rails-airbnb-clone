class RemovePhotoFromTools < ActiveRecord::Migration[5.0]
  def change
    remove_column :tools, :photo, :string
  end
end
