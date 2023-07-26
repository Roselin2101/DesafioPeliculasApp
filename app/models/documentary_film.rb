class DocumentaryFilm < ApplicationRecord
    validates :title, :duration, :description, presence: true
end
