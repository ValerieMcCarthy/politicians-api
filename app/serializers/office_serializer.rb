class OfficeSerializer < ActiveModel::Serializer
  attributes :id, :name, :district_num, :level, :constituents, :politicians
  # has_many :politicians, through: :politician_offices

  def constituents
    all_cons = object.politicians.map do |pol|
      pol.constituents
    end
    all_cons.flatten
  end
end
