class ConstituentPoliticianSerializer < ActiveModel::Serializer
  attributes :id, :constituent_id, :politician_id
end
