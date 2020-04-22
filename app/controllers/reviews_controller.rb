class ReviewsController < ApplicationController
	def show
	end

	def new
	end

	def create
	end

	private

  	def find_restaurant
    @restaurant = Restaurant.find(params[:id])
	end
end
