class Room < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
end
