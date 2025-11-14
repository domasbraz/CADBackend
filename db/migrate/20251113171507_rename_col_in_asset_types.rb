class RenameColInAssetTypes < ActiveRecord::Migration[8.0]
  def change
    rename_column :asset_types, :type, :asset_type
  end
end
