class Category < ApplicationRecord
  has_many :shoes
  validates :name, presence: true
  accepts_nested_attributes_for :shoes, reject_if: proc {|attr| attr['brand'].blank? || attr['color'].blank? || attr['price'].blank? }
end
