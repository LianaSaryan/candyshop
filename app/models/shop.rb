class Shop < ApplicationRecord
	has_many :shelves
	has_many :candies

	validates_associated :candies
	
	after_initialize :init

	def init
		self.num_of_shelves = 0 
	end	
end
