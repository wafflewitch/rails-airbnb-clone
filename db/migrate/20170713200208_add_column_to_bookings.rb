class AddColumnToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :start_time, :date
    add_column :bookings, :end_time, :date
  end
end
