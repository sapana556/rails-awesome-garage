class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
    @review = Review.new
    @favourite = Review.new
  end

  def new
    @car = Car.new
  end

  def create
    @new_car = Car.new(car_params)
    if @new_car.save
      redirect_to car_path(@car)
    else
      render 'cars/show', status: :unprocessable_entity
    end
  end

  private

  def car_params
    params.require(:new_car).permit(:brand, :model, :year, :fuel)
  end

end
