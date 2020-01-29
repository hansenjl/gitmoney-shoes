class Shoe < ActiveRecord::Base
   belongs_to :category  #built in validation for presence
   # .category  .category= .build_category
   #  .create_category

  # accepts_nested_attributes_for :category, reject_if: proc {|attr| att['name'].blank? }

  def category_attributes=(attributes)
    if !attributes["name"].blank?
      self.category =  Category.find_or_create_by(attributes)
    end
  end

  def brand_and_color
    #self.brand + " - " + self.color
     "#{self.brand} - #{self.color}"
  end

  def self.most_expensive
    self.all.sort_by {|shoe| shoe.price }.last
  end



end