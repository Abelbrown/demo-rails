class RestaurantsController < ApplicationController
  before_action :set_restaurant, only:[:show, :edit, :update, :destroy, :chef]

  def chef

  end

  def top
    @top_restaurants = Restaurant.where(stars: 3)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show

  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    # restaurant = Restaurant.create(restaurant_params)
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

    # redirect_to restaurants_path
  end

  def edit

  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
