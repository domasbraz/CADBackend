class AssetTypesChange < ActiveRecord::Migration[8.0]
  def change
    change_column_null :asset_types, :product_type, false
    add_index :asset_types, :product_type, unique: true
  end
end
