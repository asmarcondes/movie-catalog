class Review < ApplicationRecord
  belongs_to :movie
  validates :movie, :comment, presence: true
end