class CreateServicePrices < ActiveRecord::Migration
  def change
    create_table :service_prices do |t|
      t.string :name
      t.string :price
      t.references :service

      t.timestamps
    end
    add_index :service_prices, :service_id
  end
end
