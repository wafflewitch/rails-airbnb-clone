class Tool < ApplicationRecord
  CATEGORIES = ["power tools", "books", "transport", "hand tools", "sport", "painting"]
  belongs_to :user
  has_many :reviews, through: :booking
  validates :category, inclusion: { in: CATEGORIES }
  # validates :description
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :photo, presence: true, uniqueness: true

end
