class Favourite < ApplicationRecord
  belongs_to :car

  validates :owner_id, uniqueness: { scope: :car_id }
end
