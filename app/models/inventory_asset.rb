class InventoryAsset < ApplicationRecord
    validates :asset_tag, presence: true, uniqueness: true
    validates :serial, uniqueness: true
    audited
end
