class Booking < ApplicationRecord
  belongs_to :room, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :end_date, comparison: { greater_than: :start_date }
end
