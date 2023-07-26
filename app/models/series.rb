class Series < ApplicationRecord
    validates :title, :duration, :description, presence: true
end
