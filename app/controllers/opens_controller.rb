class OpensController < ApplicationController
  before_action :set_open, only: [:show, :edit, :update, :destroy]

  # GET /opens
  # GET /opens.json
  def index
    @opens = Open.all
  end

  # GET /opens/1
  # GET /opens/1.json
  def show
  end

  # GET /opens/new
  def new
    @open = Open.new
  end

  # GET /opens/1/edit
  def edit
  end

  # POST /opens
  # POST /opens.json
  def create
    @open = Open.new(open_params)

    respond_to do |format|
      if @open.save
        format.html { redirect_to @open, notice: 'Open was successfully created.' }
        format.json { render :show, status: :created, location: @open }
      else
        format.html { render :new }
        format.json { render json: @open.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opens/1
  # PATCH/PUT /opens/1.json
  def update
    respond_to do |format|
      if @open.update(open_params)
        format.html { redirect_to @open, notice: 'Open was successfully updated.' }
        format.json { render :show, status: :ok, location: @open }
      else
        format.html { render :edit }
        format.json { render json: @open.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opens/1
  # DELETE /opens/1.json
  def destroy
    @open.destroy
    respond_to do |format|
      format.html { redirect_to opens_url, notice: 'Open was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_open
      @open = Open.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def open_params
      params.require(:open).permit(:yelp, :name, :street, :city, :state, :zip, :phone, :neighborhood, :website, :category, :latitude, :longitude)
    end
end
