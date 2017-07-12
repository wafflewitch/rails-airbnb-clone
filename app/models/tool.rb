class Tool < ApplicationRecord
  CATEGORIES = ["hand tools", "power tools", "painting", "landscaping", "entertainment"]
  belongs_to :user
  has_many :reviews, through: :booking
  validates :category, inclusion: { in: CATEGORIES }
  # validates :description
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :photo, presence: true, uniqueness: true

end
