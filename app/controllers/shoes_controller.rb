class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.create(params.require(:shoe).permit(:brand, :color, :price, :condition))
    redirect_to @shoe
  end

  def edit
    @shoe = Shoe.find(params[:id])
  end

  def update
    @shoe = Shoe.find(params[:id])
    @shoe.update(params.require(:shoe).permit(:brand, :color, :price, :condition))
    redirect_to @shoe
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def expensive
    @shoe = Shoe.most_expensive
  end
end