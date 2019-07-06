class ShopsController < ApplicationController

	def new

	end

	def create
		@shop = Shop.new

		if(@shop.save)
			redirect_to @shop
		else
			render 'new'
		end
	end

	def show
		@shop = Shop.find(1)
	end
end
