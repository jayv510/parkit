class Booking < ApplicationRecord
  belongs_to :spaces
  belongs_to :users
  has_many :reviews
  validates :start_datetime, presence: true
  validates :end_datetime, presence: true
  validates :status, inclusion: { in: ["booked", "in progress", "pending", "completed", "denied"] }
end
