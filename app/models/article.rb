class Article < ApplicationRecord
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    validates :importance, numericality: {less_than_or_equal_to: 5}
end
