class Review < ApplicationRecord
  belongs_to :room, dependent: :destroy
end
