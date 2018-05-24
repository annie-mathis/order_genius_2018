class OrderMenuItemsController < ApplicationController
  before_action :set_order_menu_item, only: [:show, :edit, :update, :destroy]

  # GET /order_menu_items
  # GET /order_menu_items.json
  def index
    @order_menu_items = OrderMenuItem.all
  end

  # GET /order_menu_items/1
  # GET /order_menu_items/1.json
  def show
  end

  # GET /order_menu_items/new
  def new
    @order_menu_item = OrderMenuItem.new
  end

  # GET /order_menu_items/1/edit
  def edit
  end

  # POST /order_menu_items
  # POST /order_menu_items.json
  def create
    @order_menu_item = OrderMenuItem.new(order_menu_item_params)

    respond_to do |format|
      if @order_menu_item.save
        format.html { redirect_to @order_menu_item, notice: 'Order menu item was successfully created.' }
        format.json { render :show, status: :created, location: @order_menu_item }
      else
        format.html { render :new }
        format.json { render json: @order_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_menu_items/1
  # PATCH/PUT /order_menu_items/1.json
  def update
    respond_to do |format|
      if @order_menu_item.update(order_menu_item_params)
        format.html { redirect_to @order_menu_item, notice: 'Order menu item was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_menu_item }
      else
        format.html { render :edit }
        format.json { render json: @order_menu_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_menu_items/1
  # DELETE /order_menu_items/1.json
  def destroy
    @order_menu_item.destroy
    respond_to do |format|
      format.html { redirect_to order_menu_items_url, notice: 'Order menu item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_menu_item
      @order_menu_item = OrderMenuItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_menu_item_params
      params.require(:order_menu_item).permit(:order_id, :menu_item_id)
    end
end
