class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user

  validates :total_price, presence: true

end
