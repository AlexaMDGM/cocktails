class MeasurementsController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  before_action :set_measurement, only: [:destroy]

  def new
    @measurement = Measurement.new
  end

  def create
    @measurement = Measurement.new(measurement_params)
    @measurement.cocktail = @cocktail
    @measurement.save
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @measurement.destroy
    redirect_to cocktail_path(@cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_measurement
    @measurement = Measurement.find(params[:id])
  end

  def measurement_params
    params.require(:measurement).permit(:name, :cocktail_id, :ingredient_id)
  end
end
