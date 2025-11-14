class InventoryAssets < ActiveRecord::Migration[8.0]
  def change
    change_column_null :inventory_assets, :asset_tag, false
    add_index :inventory_assets, :asset_tag, unique: true
    add_index :inventory_assets, :serial, unique: true
  end
end
