class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :instruments
  has_many :bookings

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :avatar, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :city, presence: true
end
