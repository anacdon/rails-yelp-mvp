class RestaurantsController < ApplicationController
  before_action :set_restaurant, except: :index

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
  end

  def show
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(restaurant)
  end
end
