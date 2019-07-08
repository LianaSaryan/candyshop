class Candy < ApplicationRecord
  	belongs_to :shop

  	validates_presence_of :name

end
