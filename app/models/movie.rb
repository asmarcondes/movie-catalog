class Movie < ApplicationRecord
    has_many :casts
    has_many :actor, through: :casts
    has_many :review 
end
