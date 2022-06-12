class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :udpate, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    #set_cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save

    redirect_to @cocktail

  end

  def edit
    #set_cocktail
  end

  def update
    #set_cocktail
    @cocktail.update(cocktail_params)

    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    #set_cocktail
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

end
