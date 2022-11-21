class Review < ApplicationRecord
  belongs_to :movie
  scope :waiting_approval, -> { where(approved: false) }
  validates :movie, :comment, presence: true
end
