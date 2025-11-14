class AssetType < ApplicationRecord
    validates :product_type, presence: true, uniqueness: true
    audited
end
