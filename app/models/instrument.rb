class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true
  validates :category, presence: true
  validates :price_per_day, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
