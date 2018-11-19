class Review < ApplicationRecord
  belongs_to :bookings
  validates :rating, presence: true, numericality: true
  # , inclusion: { in: [1..5] }
end
