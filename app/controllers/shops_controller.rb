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

	def update
	 	@shop = Shop.find(1)
	 	if @shop.update!(shop_params)
	    	redirect_to @shop
	 	else
	    	render 'edit'
	  	end
	end

	def shop_params
  		shop_params = params.require(:shop).permit(:num_of_shelves ,candies_attributes: [:name, :belongs_to_shelf, :shelf_id])
	end

end
