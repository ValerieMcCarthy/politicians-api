class Office < ApplicationRecord
	has_many :politician_offices
  has_many :politicians, through: :politician_offices
end
