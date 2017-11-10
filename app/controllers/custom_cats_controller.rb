class CustomCatsController < ApplicationController
  before_action :set_custom_cat, only: [:show, :edit, :update, :destroy]

  # GET /custom_cats
  # GET /custom_cats.json
  def index
    @custom_cats = CustomCat.all
  end

  # GET /custom_cats/1
  # GET /custom_cats/1.json
  def show
  end

  # GET /custom_cats/new
  def new
    @custom_cat = CustomCat.new
  end

  # GET /custom_cats/1/edit
  def edit
  end

  # POST /custom_cats
  # POST /custom_cats.json
  def create
    @custom_cat = CustomCat.new(custom_cat_params)

    respond_to do |format|
      if @custom_cat.save
        format.html { redirect_to @custom_cat, notice: 'Custom cat was successfully created.' }
        format.json { render :show, status: :created, location: @custom_cat }
      else
        format.html { render :new }
        format.json { render json: @custom_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_cats/1
  # PATCH/PUT /custom_cats/1.json
  def update
    respond_to do |format|
      if @custom_cat.update(custom_cat_params)
        format.html { redirect_to @custom_cat, notice: 'Custom cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @custom_cat }
      else
        format.html { render :edit }
        format.json { render json: @custom_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_cats/1
  # DELETE /custom_cats/1.json
  def destroy
    @custom_cat.destroy
    respond_to do |format|
      format.html { redirect_to custom_cats_url, notice: 'Custom cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_cat
      @custom_cat = CustomCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def custom_cat_params
      params.require(:custom_cat).permit(:name, :description)
    end
end
