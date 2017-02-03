class PoliticianSerializer < ActiveModel::Serializer
  attributes :id, :name, :party, :start_date, :end_date, :constituents, :offices


end
