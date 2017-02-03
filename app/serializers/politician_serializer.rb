class PoliticianSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :start_date, :end_date
end
