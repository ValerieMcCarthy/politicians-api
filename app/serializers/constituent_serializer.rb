class ConstituentSerializer < ActiveModel::Serializer
  attributes :id, :name, :zip_code, :gender, :dob
end
