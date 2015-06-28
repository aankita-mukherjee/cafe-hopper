class CafefeaturesController < ApplicationController
  before_action :set_cafefeature, only: [:show, :edit, :update, :destroy]

  # GET /cafefeatures
  # GET /cafefeatures.json
  def index
    @cafefeatures = Cafefeature.all
  end

  # GET /cafefeatures/1
  # GET /cafefeatures/1.json
  def show
  end

  # GET /cafefeatures/new
  def new
    @cafefeature = Cafefeature.new
  end

  # GET /cafefeatures/1/edit
  def edit
  end

  # POST /cafefeatures
  # POST /cafefeatures.json
  def create
    @cafefeature = Cafefeature.new(cafefeature_params)

    respond_to do |format|
      if @cafefeature.save
        format.html { redirect_to @cafefeature, notice: 'Cafefeature was successfully created.' }
        format.json { render :show, status: :created, location: @cafefeature }
      else
        format.html { render :new }
        format.json { render json: @cafefeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafefeatures/1
  # PATCH/PUT /cafefeatures/1.json
  def update
    respond_to do |format|
      if @cafefeature.update(cafefeature_params)
        format.html { redirect_to @cafefeature, notice: 'Cafefeature was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafefeature }
      else
        format.html { render :edit }
        format.json { render json: @cafefeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafefeatures/1
  # DELETE /cafefeatures/1.json
  def destroy
    @cafefeature.destroy
    respond_to do |format|
      format.html { redirect_to cafefeatures_url, notice: 'Cafefeature was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafefeature
      @cafefeature = Cafefeature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafefeature_params
      params.require(:cafefeature).permit(:cafe_id, :featurename)
    end
end
