class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  validates :title, presence: true
  validates :address, presence: true
  validates :half_hour_rate, presence: true, numericality: true
  validates :availability, presence: true, inclusion: { in: [true, false] }
end
