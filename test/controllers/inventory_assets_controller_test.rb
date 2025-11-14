require "test_helper"

class InventoryAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inventory_asset = inventory_assets(:one)
  end

  test "should get index" do
    get inventory_assets_url, as: :json
    assert_response :success
  end

  test "should create inventory_asset" do
    assert_difference("InventoryAsset.count") do
      post inventory_assets_url, params: { inventory_asset: { asset_name: @inventory_asset.asset_name, asset_tag: @inventory_asset.asset_tag, asset_type: @inventory_asset.asset_type, brand: @inventory_asset.brand, count: @inventory_asset.count, location: @inventory_asset.location, notes: @inventory_asset.notes, order_reference: @inventory_asset.order_reference, serial: @inventory_asset.serial, status: @inventory_asset.status, value: @inventory_asset.value } }, as: :json
    end

    assert_response :created
  end

  test "should show inventory_asset" do
    get inventory_asset_url(@inventory_asset), as: :json
    assert_response :success
  end

  test "should update inventory_asset" do
    patch inventory_asset_url(@inventory_asset), params: { inventory_asset: { asset_name: @inventory_asset.asset_name, asset_tag: @inventory_asset.asset_tag, asset_type: @inventory_asset.asset_type, brand: @inventory_asset.brand, count: @inventory_asset.count, location: @inventory_asset.location, notes: @inventory_asset.notes, order_reference: @inventory_asset.order_reference, serial: @inventory_asset.serial, status: @inventory_asset.status, value: @inventory_asset.value } }, as: :json
    assert_response :success
  end

  test "should destroy inventory_asset" do
    assert_difference("InventoryAsset.count", -1) do
      delete inventory_asset_url(@inventory_asset), as: :json
    end

    assert_response :no_content
  end
end
