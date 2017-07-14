class Booking < ApplicationRecord
  belongs_to :tool
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :start_time, presence: true
  validates :end_time, presence: true
end
