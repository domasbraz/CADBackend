require "test_helper"

class AssetTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asset_type = asset_types(:one)
  end

  test "should get index" do
    get asset_types_url, as: :json
    assert_response :success
  end

  test "should create asset_type" do
    assert_difference("AssetType.count") do
      post asset_types_url, params: { asset_type: { product_type: @asset_type.product_type } }, as: :json
    end

    assert_response :created
  end

  test "should show asset_type" do
    get asset_type_url(@asset_type), as: :json
    assert_response :success
  end

  test "should update asset_type" do
    patch asset_type_url(@asset_type), params: { asset_type: { product_type: @asset_type.product_type } }, as: :json
    assert_response :success
  end

  test "should destroy asset_type" do
    assert_difference("AssetType.count", -1) do
      delete asset_type_url(@asset_type), as: :json
    end

    assert_response :no_content
  end
end
