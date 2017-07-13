class Tool < ApplicationRecord
  CATEGORIES = ["hand tools", "power tools", "painting", "home decor", "yard work", "entertainment", "cooking", "camping"]
  belongs_to :user
  has_many :reviews, through: :booking
  has_many :bookings, dependent: :destroy
  validates :tags, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end
