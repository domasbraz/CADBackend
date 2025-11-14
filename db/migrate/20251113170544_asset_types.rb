class AssetTypes < ActiveRecord::Migration[8.0]
  def change
    change_column_null :asset_types, :type, false
    add_index :asset_types, :type, unique: true
  end
end
