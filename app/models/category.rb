class Category < ApplicationRecord
  has_many :shoes
  validates :name, presence: true
  accepts_nested_attributes_for :shoes, reject_if: proc {|attr| attr['brand'].blank? || attr['color'].blank? || attr['price'].blank? }

  scope :order_by_num_or_shoes, -> {joins(:shoes).group(:category_id).order('count(category_id) ASC') }
  #group_by
  #order
end
