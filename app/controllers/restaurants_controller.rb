class RestaurantsController < ApplicationController
	before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.new(restaurant_params)
		@restaurant.save
		redirect_to restaurants_path
	end

	def show
	end

	private

  	def find_restaurant
    @restaurant = Restaurant.find(params[:id])
	end

	def restaurant_params
		params.require(:restaurant).permit(:name, :category, :address, :phone_number)
	end
end
