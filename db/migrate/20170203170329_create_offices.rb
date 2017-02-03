class CreateOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :offices do |t|
      t.string :name
      t.integer :district_num
      t.string :level

      t.timestamps
    end
  end
end
