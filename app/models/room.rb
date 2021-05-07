class Room < ApplicationRecord
  belongs_to:user
  has_many :reservations

  def self.search(search)
    if search
      Room.where(['content LIKE ?', "%#{search}%"])
    else
      Room.all
    end
  end
end
