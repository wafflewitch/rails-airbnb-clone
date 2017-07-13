class AddTagsToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :tags, :text, array:true, default: []
  end
end
