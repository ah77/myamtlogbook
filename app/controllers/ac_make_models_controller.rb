class AcMakeModelsController < ApplicationController
  before_action :set_ac_make_model, only: [:show, :edit, :update, :destroy]

  # GET /ac_make_models
  # GET /ac_make_models.json
  def index
    @ac_make_models = AcMakeModel.all.order(:abbreviation)
  end

  # GET /ac_make_models/1
  # GET /ac_make_models/1.json
  def show
  end

  # GET /ac_make_models/new
  def new
    @ac_make_model = AcMakeModel.new
  end

  # GET /ac_make_models/1/edit
  def edit
  end

  # POST /ac_make_models
  # POST /ac_make_models.json
  def create
    @ac_make_model = AcMakeModel.new(ac_make_model_params)

    respond_to do |format|
      if @ac_make_model.save
        format.html { redirect_to @ac_make_model, notice: 'Ac make model was successfully created.' }
        format.json { render :show, status: :created, location: @ac_make_model }
      else
        format.html { render :new }
        format.json { render json: @ac_make_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ac_make_models/1
  # PATCH/PUT /ac_make_models/1.json
  def update
    respond_to do |format|
      if @ac_make_model.update(ac_make_model_params)
        format.html { redirect_to @ac_make_model, notice: 'Ac make model was successfully updated.' }
        format.json { render :show, status: :ok, location: @ac_make_model }
      else
        format.html { render :edit }
        format.json { render json: @ac_make_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ac_make_models/1
  # DELETE /ac_make_models/1.json
  def destroy
    @ac_make_model.destroy
    respond_to do |format|
      format.html { redirect_to ac_make_models_url, notice: 'Ac make model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ac_make_model
      @ac_make_model = AcMakeModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ac_make_model_params
      params.require(:ac_make_model).permit(:abbreviation, :manufacturer, :model, :family)
    end
end
