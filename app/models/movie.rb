class Movie < ApplicationRecord
    validates :title, :duration, :description, presence: true
end
