class BlockedcafesController < ApplicationController
  before_action :set_blockedcafe, only: [:show, :edit, :update, :destroy]

  # GET /blockedcafes
  # GET /blockedcafes.json
  def index
    @blockedcafes = Blockedcafe.all
  end

  # GET /blockedcafes/1
  # GET /blockedcafes/1.json
  def show
  end

  # GET /blockedcafes/new
  def new
    @blockedcafe = Blockedcafe.new
  end

  # GET /blockedcafes/1/edit
  def edit
  end

  # POST /blockedcafes
  # POST /blockedcafes.json
  def create
    @blockedcafe = Blockedcafe.new(blockedcafe_params)

    respond_to do |format|
      if @blockedcafe.save
        format.html { redirect_to @blockedcafe, notice: 'Blockedcafe was successfully created.' }
        format.json { render :show, status: :created, location: @blockedcafe }
      else
        format.html { render :new }
        format.json { render json: @blockedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blockedcafes/1
  # PATCH/PUT /blockedcafes/1.json
  def update
    respond_to do |format|
      if @blockedcafe.update(blockedcafe_params)
        format.html { redirect_to @blockedcafe, notice: 'Blockedcafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @blockedcafe }
      else
        format.html { render :edit }
        format.json { render json: @blockedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blockedcafes/1
  # DELETE /blockedcafes/1.json
  def destroy
    @blockedcafe.destroy
    respond_to do |format|
      format.html { redirect_to blockedcafes_url, notice: 'Blockedcafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blockedcafe
      @blockedcafe = Blockedcafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blockedcafe_params
      params.require(:blockedcafe).permit(:user_id, :cafe_id)
    end
end
