class CompainesController < ApplicationController
  before_action :set_compaine, only: [:show, :edit, :update, :destroy]

  # GET /compaines
  # GET /compaines.json
  def index
    @compaines = Compaine.all
  end

  # GET /compaines/1
  # GET /compaines/1.json
  def show
  end

  # GET /compaines/new
  def new
    @compaine = Compaine.new
  end

  # GET /compaines/1/edit
  def edit
  end

  # POST /compaines
  # POST /compaines.json
  def create
    @compaine = Compaine.new(compaine_params)

    respond_to do |format|
      if @compaine.save
        format.html { redirect_to @compaine, notice: 'Compaine was successfully created.' }
        format.json { render :show, status: :created, location: @compaine }
      else
        format.html { render :new }
        format.json { render json: @compaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compaines/1
  # PATCH/PUT /compaines/1.json
  def update
    respond_to do |format|
      if @compaine.update(compaine_params)
        format.html { redirect_to @compaine, notice: 'Compaine was successfully updated.' }
        format.json { render :show, status: :ok, location: @compaine }
      else
        format.html { render :edit }
        format.json { render json: @compaine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compaines/1
  # DELETE /compaines/1.json
  def destroy
    @compaine.destroy
    respond_to do |format|
      format.html { redirect_to compaines_url, notice: 'Compaine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compaine
      @compaine = Compaine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compaine_params
      params.require(:compaine).permit(:name, :address, :phone_number, :phone_number_2, :fax, :website, :owns, :rents, :primary_idustry, :secondary_idustry, :SF_occupying, :email, :notes, :sic_code, :data_checked, :type_of_location, :listing_agent, :suit, :total_employees, :year_founded, :follow_up, :active, :user_id)
    end
end
