class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true
  validates :rating, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :comment, presence: true, length: { minimum: 6, too_short: "must have at least 6 characters" }
end
