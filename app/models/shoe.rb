class Shoe < ActiveRecord::Base

  def brand_and_color
    self.brand + " - " + self.color
    #  "#{self.brand} - #{self.color}"
  end

  def self.most_expensive
    self.all.sort_by {|shoe| shoe.price }.last
  end

end