class Constituent < ApplicationRecord
	has_many :politicians, through: :constituent_politicians
end
