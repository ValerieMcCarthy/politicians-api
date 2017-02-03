class ConstituentPolitician < ApplicationRecord
	belongs_to :politician 
	belongs_to :constituent
end
