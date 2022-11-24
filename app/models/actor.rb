require 'uri'

class Actor < ApplicationRecord
  has_and_belongs_to_many :movies

  validates :name, :birth_year, :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP
  validates :birth_year, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 1700
  }
end
