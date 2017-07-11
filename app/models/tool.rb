class Tool < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :booking
  has_many :bookings, dependent: :destroy
  validates :category, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :photo, presence: true, uniqueness: true
end
