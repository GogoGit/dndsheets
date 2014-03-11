class EquipsController < ApplicationController
  before_action :set_equip, only: [:show, :edit, :update, :destroy]

  # GET /equips
  # GET /equips.json
  def index
    @equips = Equip.all
  end

  # GET /equips/1
  # GET /equips/1.json
  def show
  end

  # GET /equips/new
  def new
    @equip = Equip.new
  end

  # GET /equips/1/edit
  def edit
  end

  # POST /equips
  # POST /equips.json
  def create
    @equip = Equip.new(equip_params)

    respond_to do |format|
      if @equip.save
        format.html { redirect_to @equip, notice: 'Equip was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equip }
      else
        format.html { render action: 'new' }
        format.json { render json: @equip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equips/1
  # PATCH/PUT /equips/1.json
  def update
    respond_to do |format|
      if @equip.update(equip_params)
        format.html { redirect_to @equip, notice: 'Equip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equips/1
  # DELETE /equips/1.json
  def destroy
    @equip.destroy
    respond_to do |format|
      format.html { redirect_to equips_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equip
      @equip = Equip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equip_params
      params.require(:equip).permit(:name, :desc, :character_id, :qty)
    end
end
