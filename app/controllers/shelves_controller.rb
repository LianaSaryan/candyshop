class ShelvesController < ApplicationController
	
	def index
		@shop = Shop.find(1)
		@shelves = Shelf.all()
	end

	def create
		@shop = Shop.find(1)
		@shop.num_of_shelves += 1
		@shop.save
		
		@shelf = @shop.shelves.create()
		redirect_to shop_shelves_path(@shop)
	end

	def show
		@shop = Shop.find(1)
		@shelf = Shelf.find(params[:id])
	end

	def destroy
		@shop = Shop.find(params[:shop_id])
    	@shelf = Shelf.find(params[:id])

    	Candy.where(belongs_to_shelf: @shelf.id).find_each do |candy|
    		candy.belongs_to_shelf = nil
    		candy.save
    	end

    	@shelf.destroy

    	redirect_to shop_shelves_path(1)
	end

end
