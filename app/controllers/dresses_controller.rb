class DressesController < ApplicationController
  before_action :set_dress, only: [:show, :edit, :update, :destroy]

  # GET /dresses
  # GET /dresses.json
  def index
    @navigate = "navbar-shrink"
    @dresses = Dress.all
  end

  # GET /dresses/admin
  def admin
    @dresses = Dress.all
  end

  # GET /dresses/1
  # GET /dresses/1.json
  def show
  end

  # GET /dresses/new
  def new

    @dress = Dress.new

    respond_to do |format|
      format.html
      format.js {render layout: false}
    end

  end

  # GET /dresses/1/edit
  def edit
  end

  # POST /dresses
  # POST /dresses.json
  def create
    @dress = Dress.new(dress_params)

    respond_to do |format|
      if @dress.save
        format.html { redirect_to dresses_url, notice: 'Dress was successfully created.' }
        format.json { render :index, status: :created, location: @dress }
      else
        format.html { render :new }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dresses/1
  # PATCH/PUT /dresses/1.json
  def update
    respond_to do |format|
      if @dress.update(dress_params)
        format.html { redirect_to dresses_url, notice: 'Dress was successfully updated.' }
        format.json { render :index, status: :ok, location: @dress }
      else
        format.html { render :edit }
        format.json { render json: @dress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dresses/1
  # DELETE /dresses/1.json
  def destroy
    @dress.destroy
    respond_to do |format|
      format.html { redirect_to dresses_url, notice: 'Dress was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dress
      if params[:id] == "admin"
        @dresses = Dress.all
      else
        @dress = Dress.find(params[:id])
      end
      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dress_params
      params.require(:dress).permit(:name, :code, :remarks, :colors, :price, :stock, :ms_length, :ms_bust, :ms_waist, :ms_hip)
    end
end
