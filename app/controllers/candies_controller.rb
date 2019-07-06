class CandiesController < ApplicationController

	def create
		@shop = Shop.find(1)
		@candy = @shop.candies.create(candy_params)
		redirect_to shop_path(@shop)
		
	end

	private def candy_params

		params.require(:candy).permit(:name)
	end

end
