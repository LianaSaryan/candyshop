class Candy < ApplicationRecord
  	belongs_to :shop

  	after_initialize :init

	def init
		self.shelved = false
		self.belongs_to_shelf = 0
	end	
end
