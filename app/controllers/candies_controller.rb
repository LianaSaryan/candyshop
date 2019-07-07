class CandiesController < ApplicationController

	def create
		@shop = Shop.find(1)
		@candy = @shop.candies.create(candy_params)
		redirect_to shop_path(@shop)
		
	end

	private def candy_params
		params.require(:candy).permit(:name, :belongs_to_shelf)
	end

	def edit
		@candy = Candy.find(params[:id])
	end

	def update
		@candy = Candy.find(params[:id])

		if(@candy.update(candy_params))
			redirect_to @candy
		else
			render 'edit'
		end
	end

	def destroy
		@candy = Post.find(params[:id])
		@candy.destroy

		redirect_to @candy
	end

	def show
		@candy = Candy.find(params[:id])
	end

end
