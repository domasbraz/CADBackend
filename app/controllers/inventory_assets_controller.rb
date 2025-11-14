class InventoryAssetsController < ApplicationController
  before_action :set_inventory_asset, only: %i[ show update destroy ]

  # GET /inventory_assets
  def index
    @inventory_assets = InventoryAsset.all

    render json: @inventory_assets
  end

  # GET /inventory_assets/1
  def show
    render json: @inventory_asset
  end

  # POST /inventory_assets
  def create
    @inventory_asset = InventoryAsset.new(inventory_asset_params)

    if @inventory_asset.save
      render json: @inventory_asset, status: :created, location: @inventory_asset
    else
      render json: {errors: @inventory_asset.errors.full_messages}, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inventory_assets/1
  def update
    if @inventory_asset.update(inventory_asset_params)
      render json: @inventory_asset
    else
      render json: {errors: @inventory_asset.errors.full_messages}, status: :unprocessable_content
    end
  end

  # DELETE /inventory_assets/1
  def destroy
    @inventory_asset.destroy!

    render json: { message: "Inventory asset deleted successfully." }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventory_asset
      @inventory_asset = InventoryAsset.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def inventory_asset_params
      params.expect(inventory_asset: [ :asset_tag, :asset_name, :serial, :asset_type, :brand, :status, :location, :value, :order_reference, :notes, :count ])
    end
end
