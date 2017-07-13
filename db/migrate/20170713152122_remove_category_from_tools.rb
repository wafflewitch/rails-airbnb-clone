class RemoveCategoryFromTools < ActiveRecord::Migration[5.0]
  def change
    remove_column :tools, :category, :string
  end
end
