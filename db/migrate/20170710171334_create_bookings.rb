class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :tool, foreign_key: true
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
