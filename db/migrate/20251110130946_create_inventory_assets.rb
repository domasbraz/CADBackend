class CreateInventoryAssets < ActiveRecord::Migration[8.0]
  def change
    create_table :inventory_assets do |t|
      t.string :asset_tag
      t.string :asset_name
      t.string :serial
      t.string :asset_type
      t.string :brand
      t.string :status
      t.string :location
      t.float :value
      t.string :order_reference
      t.string :notes
      t.integer :count

      t.timestamps
    end
  end
end
