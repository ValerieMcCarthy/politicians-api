class CreatePoliticianOffices < ActiveRecord::Migration[5.0]
  def change
    create_table :politician_offices do |t|
      t.integer :politician_id
      t.integer :office_id

      t.timestamps
    end
  end
end
