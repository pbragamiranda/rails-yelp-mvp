class RestaurantsController < ApplicationController
	before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

	def index
		@restaurants = Restaurant.all
	end

	def create
	end

	def new
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
		@restaurant.destroy
		redirect_to restaurants_path
	end

	private

  	def find_restaurant
    @restaurant = Restaurant.find(params[:id])
	end
end
