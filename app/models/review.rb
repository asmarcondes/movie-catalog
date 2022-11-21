class Review < ApplicationRecord
  belongs_to :movie
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
