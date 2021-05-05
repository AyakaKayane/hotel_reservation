class User < ApplicationRecord
  has_secure_password
  validates :name, {presence: true}
  validates :mail, {presence: true}

  has_many :rooms, dependent: :destroy
  has_many :reservations
end
