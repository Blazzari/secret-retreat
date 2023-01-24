class Room < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
  validates :photo, :title, :address, :city, :guests_number, :price, presence: true
  has_one_attached :photo
end
