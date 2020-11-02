class ChangeIntegerLimitInDatum < ActiveRecord::Migration[6.0]
  def change
    change_column :data, :total_funding_usd, :integer, limit: 8
  end
end
