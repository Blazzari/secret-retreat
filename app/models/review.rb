class Review < ApplicationRecord
  belongs_to :room, dependent: :destroy
  validates :content, :review_rating, presence: true
  validates :review_rating, inclusion: 1..5
end
