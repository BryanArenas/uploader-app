class CreateData < ActiveRecord::Migration[6.0]
  def change
    create_table :data do |t|
      t.string :country_code
      t.string :region_name
      t.string :company_name
      t.string :description
      t.date :last_funding_on
      t.integer :total_funding_usd

      t.timestamps
    end
  end
end
