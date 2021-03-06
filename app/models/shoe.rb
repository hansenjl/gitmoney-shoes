class Shoe < ActiveRecord::Base
   belongs_to :category  #built in validation for presence

   # .category  .category= .build_category
   #  .create_category

  # accepts_nested_attributes_for :category, reject_if: proc {|attr| attr['name'].blank? }

  def category_attributes=(attributes)
    if !attributes["name"].blank?
      self.category =  Category.find_or_create_by(attributes)
    end
  end

  validates :brand, :color, :price, presence: true
  validates :price, numericality: { only_integer: true, greater_than: 10 }
  validates :color, uniqueness: {scope: :brand, message: "has already been used with that brand"}
  validates :color, two_word: true
 # validates :brand, two_word: true
  #validate :color_check

  def brand_and_color
    #self.brand + " - " + self.color
     "#{self.brand} - #{self.color}"
  end

  # Scope
  scope :new_shoes, -> {where('condition = ?', 'new')}
  scope :order_by_price, -> {order(:price)}
  # def self.order_by_price
  #   order(:price)
  # end

  # def self.new_shoes
  #   #where(condition: 'new')
  # end
  def self.most_expensive
    Shoe.where(price: Shoe.maximum('price')).last
  end



  def color_check
    #add an error if they only used 1 word for the color

    if color.split(" ").count != 2
      #add an error message
      errors.add(:color, "must be exactly 2 words")
    end

  end


end