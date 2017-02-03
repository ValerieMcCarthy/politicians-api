class ConstituentSerializer < ActiveModel::Serializer
  attributes :id, :name, :zip_code, :gender, :dob, :politicians, :offices

  def offices
    all_offices = object.politicians.map do |pol|
      pol.offices
    end
    all_offices.flatten
  end


end
