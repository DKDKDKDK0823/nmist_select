class Wear < ApplicationRecord
    has_many_attached :images
    belongs_to :size
    belongs_to :type
end
