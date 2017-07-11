class Review < ApplicationRecord
  belongs_to :booking
  # belongs_to :tool, through: :booking ### not sure about this???
  # validates :content
  validates :rating, presence: true
end
