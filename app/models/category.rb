class Category < ApplicationRecord
  has_many :shoes
  validates :name, presence: true
end
