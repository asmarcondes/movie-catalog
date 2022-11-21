class Review < ApplicationRecord
  belongs_to :movie
  scope :waiting_approval, -> { where(approved: false) }
  validates :movie, :comment, presence: true
  validates :rating, numericality: {
    only_integer: true,
    in: 0..10
  }
end
