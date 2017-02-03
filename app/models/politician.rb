class Politician < ApplicationRecord
	has_many :constituents, through: :politicians
	has_many :offices, through: :politician_offices
end
