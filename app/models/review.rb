class Review < ApplicationRecord
  belongs_to :movie
  default_scope { where(approved: false) }
  validates :movie, :comment, presence: true
end
