class Shoe < ActiveRecord::Base
  validates :brand, :color, :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 10 }
  validates :color, uniqueness: {scope: :brand, message: "has already been used with that brand"}
  validates :color, two_word: true
  validates :brand, two_word: true
  #validate :color_check

  def brand_and_color
    #self.brand + " - " + self.color
     "#{self.brand} - #{self.color}"
  end

  def self.most_expensive
    self.all.sort_by {|shoe| shoe.price }.last
  end


  def color_check
    #add an error if they only used 1 word for the color

    if color.split(" ").count != 2
      #add an error message
      errors.add(:color, "must be exactly 2 words")
    end

  end

end