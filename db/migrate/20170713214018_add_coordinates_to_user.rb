class AddCoordinatesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :lat, :float
    add_column :users, :long, :float
  end
end
