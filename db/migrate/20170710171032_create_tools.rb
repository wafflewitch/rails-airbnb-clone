class CreateTools < ActiveRecord::Migration[5.0]
  def change
    create_table :tools do |t|
      t.string :category
      t.text :description
      t.string :title
      t.integer :price
      t.boolean :available
      t.string :photo
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
