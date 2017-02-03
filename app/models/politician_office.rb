class PoliticianOffice < ApplicationRecord
	belongs_to :politician 
	belongs_to :office 
	
end
