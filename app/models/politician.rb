class Politician < ApplicationRecord
	has_many :constituent_politicians
  has_many :politician_offices
  has_many :constituents, through: :constituent_politicians
	has_many :offices, through: :politician_offices
end
