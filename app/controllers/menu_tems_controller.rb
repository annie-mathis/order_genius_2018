class MenuTemsController < ApplicationController
  before_action :set_menu_tem, only: [:show, :edit, :update, :destroy]

  # GET /menu_tems
  # GET /menu_tems.json
  def index
    @menu_tems = MenuTem.all
  end

  # GET /menu_tems/1
  # GET /menu_tems/1.json
  def show
  end

  # GET /menu_tems/new
  def new
    @menu_tem = MenuTem.new
  end

  # GET /menu_tems/1/edit
  def edit
  end

  # POST /menu_tems
  # POST /menu_tems.json
  def create
    @menu_tem = MenuTem.new(menu_tem_params)

    respond_to do |format|
      if @menu_tem.save
        format.html { redirect_to @menu_tem, notice: 'Menu tem was successfully created.' }
        format.json { render :show, status: :created, location: @menu_tem }
      else
        format.html { render :new }
        format.json { render json: @menu_tem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_tems/1
  # PATCH/PUT /menu_tems/1.json
  def update
    respond_to do |format|
      if @menu_tem.update(menu_tem_params)
        format.html { redirect_to @menu_tem, notice: 'Menu tem was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_tem }
      else
        format.html { render :edit }
        format.json { render json: @menu_tem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_tems/1
  # DELETE /menu_tems/1.json
  def destroy
    @menu_tem.destroy
    respond_to do |format|
      format.html { redirect_to menu_tems_url, notice: 'Menu tem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_tem
      @menu_tem = MenuTem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_tem_params
      params.require(:menu_tem).permit(:name, :price, :restaurant_id)
    end
end
