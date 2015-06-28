class CafephotosController < ApplicationController
  before_action :set_cafephoto, only: [:show, :edit, :update, :destroy]

  # GET /cafephotos
  # GET /cafephotos.json
  def index
    @cafephotos = Cafephoto.all
  end

  # GET /cafephotos/1
  # GET /cafephotos/1.json
  def show
  end

  # GET /cafephotos/new
  def new
    @cafephoto = Cafephoto.new
  end

  # GET /cafephotos/1/edit
  def edit
  end

  # POST /cafephotos
  # POST /cafephotos.json
  def create
    @cafephoto = Cafephoto.new(cafephoto_params)

    respond_to do |format|
      if @cafephoto.save
        format.html { redirect_to @cafephoto, notice: 'Cafephoto was successfully created.' }
        format.json { render :show, status: :created, location: @cafephoto }
      else
        format.html { render :new }
        format.json { render json: @cafephoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cafephotos/1
  # PATCH/PUT /cafephotos/1.json
  def update
    respond_to do |format|
      if @cafephoto.update(cafephoto_params)
        format.html { redirect_to @cafephoto, notice: 'Cafephoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafephoto }
      else
        format.html { render :edit }
        format.json { render json: @cafephoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cafephotos/1
  # DELETE /cafephotos/1.json
  def destroy
    @cafephoto.destroy
    respond_to do |format|
      format.html { redirect_to cafephotos_url, notice: 'Cafephoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafephoto
      @cafephoto = Cafephoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafephoto_params
      params.require(:cafephoto).permit(:cafe_id, :photourl)
    end
end
