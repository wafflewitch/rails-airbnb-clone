class FixGeocodeColumnNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :lat, :latitude
    rename_column :users, :long, :longitude
  end
end
