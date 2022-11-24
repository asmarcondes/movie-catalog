class Movie < ApplicationRecord
  validates :title, presence: true
  validates :launch_year, presence: true
  validates :actors, presence: true

  validates :title, uniqueness: true
  validates :launch_year, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1888
  }

  has_and_belongs_to_many :actors
  has_many :reviews, dependent: :destroy
end
