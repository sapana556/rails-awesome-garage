class FavouritesController < ApplicationController

  def create
    @car = Car.find(params[:car_id])
    @favourite = Favourite.new
    @favourite.car = @car
    if @favourite.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end
end
