class Owner < ApplicationRecord
  has_many :cars
  # has_many :favourites, through: :cars

  validates :nickname, uniqueness: true, presence: true
end
