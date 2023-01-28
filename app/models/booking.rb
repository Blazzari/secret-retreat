class Booking < ApplicationRecord
  belongs_to :room, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :end_date, comparison: { greater_than: :start_date }

  after_create :set_price

  def set_price
    duration = end_date - start_date
    duration = duration.to_i
    price = duration * room.price
    price = price.to_i
    self.price = price
    self.duration = duration
    save
  end
end
