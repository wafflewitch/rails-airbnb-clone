class AddUserReferenceToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :user, index: true
  end
end
