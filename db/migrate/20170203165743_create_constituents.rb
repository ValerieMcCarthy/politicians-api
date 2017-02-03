class CreateConstituents < ActiveRecord::Migration[5.0]
  def change
    create_table :constituents do |t|
      t.string :name
      t.integer :zip_code
      t.string :gender
      t.datetime :dob

      t.timestamps
    end
  end
end
