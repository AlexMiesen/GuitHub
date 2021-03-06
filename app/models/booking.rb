class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user

  validates :total_price, presence: true
  validates :status, presence: true
  validates :no_days, presence: true
end
