class Tool < ApplicationRecord
  CATEGORIES = ["hand tools", "power tools", "painting", "landscaping", "entertainment"]
  belongs_to :user
  has_many :reviews, through: :booking
  has_many :bookings, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :photo, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
