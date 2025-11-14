class AssetManager < ActiveRecord::Migration[8.0]
  def change
    remove_column :inventory_assets, :count, :integer
  end
end
