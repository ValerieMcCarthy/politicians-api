class Constituent < ApplicationRecord
	has_many :constituent_politicians
  has_many :politicians, through: :constituent_politicians
end
