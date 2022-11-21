class Review < ApplicationRecord
  belongs_to :movie
  has_many :comments

  validates :movie, :comments, presence: true
end
