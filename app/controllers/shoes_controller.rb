class ShoesController < ApplicationController

  def index
    @shoes = Shoe.new_shoes.order_by_price
  end

  def new
    @shoe = Shoe.new
    @shoe.build_category #belongs_to
  end

  def create
    @shoe = Shoe.new(params.require(:shoe).permit(:brand, :condition, :price, :color, :category_id, category_attributes: [:name]))
    if @shoe.save
      redirect_to shoe_path(@shoe)
    else

      render :new
    end
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    @shoe = Shoe.find(params[:id])
    @shoe.update(params.require(:shoe).permit(:brand, :condition, :price, :color))
    redirect_to @shoe
  end

  def destroy   #'/shoes/:id'
      @shoe = Shoe.find(params[:id])
      @shoe.destroy
      redirect_to shoes_path
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def expensive
    @shoe = Shoe.most_expensive
  end
end