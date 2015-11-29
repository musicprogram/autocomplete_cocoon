class MaterialSheetsController < ApplicationController
  before_action :set_material_sheet, only: [:show, :edit, :update, :destroy]

  autocomplete :material, :nombre, full: false
  # GET /material_sheets
  # GET /material_sheets.json
  def index
    @material_sheets = MaterialSheet.all
  end

  # GET /material_sheets/1
  # GET /material_sheets/1.json
  def show
  end

  # GET /material_sheets/new
  def new
    @material_sheet = MaterialSheet.new
  end

  # GET /material_sheets/1/edit
  def edit
  end

  # POST /material_sheets
  # POST /material_sheets.json
  def create
    @material_sheet = MaterialSheet.new(material_sheet_params)

    respond_to do |format|
      if @material_sheet.save
        format.html { redirect_to @material_sheet, notice: 'Material sheet was successfully created.' }
        format.json { render :show, status: :created, location: @material_sheet }
      else
        format.html { render :new }
        format.json { render json: @material_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_sheets/1
  # PATCH/PUT /material_sheets/1.json
  def update
    respond_to do |format|
      if @material_sheet.update(material_sheet_params)
        format.html { redirect_to @material_sheet, notice: 'Material sheet was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_sheet }
      else
        format.html { render :edit }
        format.json { render json: @material_sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_sheets/1
  # DELETE /material_sheets/1.json
  def destroy
    @material_sheet.destroy
    respond_to do |format|
      format.html { redirect_to material_sheets_url, notice: 'Material sheet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_sheet
      @material_sheet = MaterialSheet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def material_sheet_params
      params.require(:material_sheet).permit(:material_id, :cantidad, :sheet_id)
    end
end
