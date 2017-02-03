class CreateConstituentPoliticians < ActiveRecord::Migration[5.0]
  def change
    create_table :constituent_politicians do |t|
      t.integer :constituent_id
      t.integer :politician_id

      t.timestamps
    end
  end
end
