class Shelf < ApplicationRecord
  	belongs_to :shop

    after_initialize :init

	def init
		self.num_of_candies = 0
	end	
end
