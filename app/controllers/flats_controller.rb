class FlatsController < ApplicationController
  # before_action :set_flat, only: %i[index show]

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  private

  # def set_flat
  #   @flat = Flat.find(params[:id])
  # end

  def flat_params
    params.requre(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end

# t.string "name"
# t.string "address"
# t.text "description"
# t.integer "price_per_night"
# t.integer "number_of_guests"
