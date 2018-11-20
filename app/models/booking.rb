class Booking < ApplicationRecord
  belongs_to :space
  belongs_to :user
  has_many :reviews
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :status, inclusion: { in: ["booked", "in progress", "pending", "completed", "denied"] }
end
