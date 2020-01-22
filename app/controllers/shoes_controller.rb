class ShoesController < ApplicationController

  def index
    @shoes = Shoe.all
  end

  def show
    @shoe = Shoe.find(params[:id])
  end

  def expensive
    @shoe = Shoe.most_expensive
  end
end