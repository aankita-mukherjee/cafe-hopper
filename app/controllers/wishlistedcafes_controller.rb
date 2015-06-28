class WishlistedcafesController < ApplicationController
  before_action :set_wishlistedcafe, only: [:show, :edit, :update, :destroy]

  # GET /wishlistedcafes
  # GET /wishlistedcafes.json
  def index
    @wishlistedcafes = Wishlistedcafe.all
  end

  # GET /wishlistedcafes/1
  # GET /wishlistedcafes/1.json
  def show
  end

  # GET /wishlistedcafes/new
  def new
    @wishlistedcafe = Wishlistedcafe.new
  end

  # GET /wishlistedcafes/1/edit
  def edit
  end

  # POST /wishlistedcafes
  # POST /wishlistedcafes.json
  def create
    @wishlistedcafe = Wishlistedcafe.new(wishlistedcafe_params)

    respond_to do |format|
      if @wishlistedcafe.save
        format.html { redirect_to @wishlistedcafe, notice: 'Wishlistedcafe was successfully created.' }
        format.json { render :show, status: :created, location: @wishlistedcafe }
      else
        format.html { render :new }
        format.json { render json: @wishlistedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wishlistedcafes/1
  # PATCH/PUT /wishlistedcafes/1.json
  def update
    respond_to do |format|
      if @wishlistedcafe.update(wishlistedcafe_params)
        format.html { redirect_to @wishlistedcafe, notice: 'Wishlistedcafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @wishlistedcafe }
      else
        format.html { render :edit }
        format.json { render json: @wishlistedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishlistedcafes/1
  # DELETE /wishlistedcafes/1.json
  def destroy
    @wishlistedcafe.destroy
    respond_to do |format|
      format.html { redirect_to wishlistedcafes_url, notice: 'Wishlistedcafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlistedcafe
      @wishlistedcafe = Wishlistedcafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlistedcafe_params
      params.require(:wishlistedcafe).permit(:user_id, :cafe_id)
    end
end
