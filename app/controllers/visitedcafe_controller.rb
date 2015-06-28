class VisitedcafeController < ApplicationController
  before_action :set_visitedcafe, only: [:show, :edit, :update, :destroy]

  # GET /visitedcafe
  # GET /visitedcafe.json
  def index
    @visitedcafe = Visitedcafe.all
  end

  # GET /visitedcafe/1
  # GET /visitedcafe/1.json
  def show
  end

  # GET /visitedcafe/new
  def new
    @visitedcafe = Visitedcafe.new
  end

  # GET /visitedcafe/1/edit
  def edit
  end

  # POST /visitedcafe
  # POST /visitedcafe.json
  def create
    @visitedcafe = Visitedcafe.new(visitedcafe_params)

    respond_to do |format|
      if @visitedcafe.save
        format.html { redirect_to @visitedcafe, notice: 'Visitedcafe was successfully created.' }
        format.json { render :show, status: :created, location: @visitedcafe }
      else
        format.html { render :new }
        format.json { render json: @visitedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visitedcafe/1
  # PATCH/PUT /visitedcafe/1.json
  def update
    respond_to do |format|
      if @visitedcafe.update(visitedcafe_params)
        format.html { redirect_to @visitedcafe, notice: 'Visitedcafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @visitedcafe }
      else
        format.html { render :edit }
        format.json { render json: @visitedcafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visitedcafe/1
  # DELETE /visitedcafe/1.json
  def destroy
    @visitedcafe.destroy
    respond_to do |format|
      format.html { redirect_to visitedcafe_index_url, notice: 'Visitedcafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visitedcafe
      @visitedcafe = Visitedcafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visitedcafe_params
      params.require(:visitedcafe).permit(:user_id, :cafe_id)
    end
end
