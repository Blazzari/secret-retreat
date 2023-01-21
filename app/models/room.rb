class Room < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
  validates :title, :address, :city, :guests_number, :price, presence: true
end
