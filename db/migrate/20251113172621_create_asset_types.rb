class CreateAssetTypes < ActiveRecord::Migration[8.0]
  def change
    create_table :asset_types do |t|
      t.string :product_type

      t.timestamps
    end
  end
end
