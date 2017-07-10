class Tool < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :booking
  validates :category, presence: true
  validates :description
  validates :title, presence: true
  validates :price, presence: true
  validates :available, presence: true
  validates :photo, presence: true, uniqueness: true
end
