class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user
end
