class Office < ApplicationRecord
	has_many :politicians, through: :politician_offices
end
