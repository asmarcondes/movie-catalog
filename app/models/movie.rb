class Movie < ApplicationRecord
    has_many :actor
    has_many :review 
end
