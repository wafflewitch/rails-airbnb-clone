class AddPhotoToTool < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :photo, :string
  end
end
