class AbonentsController < ApplicationController
  before_action :set_abonent, only: [:show, :edit, :update, :destroy]

  # GET /abonents
  # GET /abonents.json
  def index
    @abonents = Abonent.all
  end

  # GET /abonents/1
  # GET /abonents/1.json
  def show
  end

  # GET /abonents/new
  def new
    @abonent = Abonent.new
  end

  # GET /abonents/1/edit
  def edit
  end

  # POST /abonents
  # POST /abonents.json
  def create
    @abonent = Abonent.new(abonent_params)

    respond_to do |format|
      if @abonent.save
        format.html { redirect_to @abonent, notice: 'Abonent was successfully created.' }
        format.json { render :show, status: :created, location: @abonent }
      else
        format.html { render :new }
        format.json { render json: @abonent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abonents/1
  # PATCH/PUT /abonents/1.json
  def update
    respond_to do |format|
      if @abonent.update(abonent_params)
        format.html { redirect_to @abonent, notice: 'Abonent was successfully updated.' }
        format.json { render :show, status: :ok, location: @abonent }
      else
        format.html { render :edit }
        format.json { render json: @abonent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abonents/1
  # DELETE /abonents/1.json
  def destroy
    @abonent.destroy
    respond_to do |format|
      format.html { redirect_to abonents_url, notice: 'Abonent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abonent
      @abonent = Abonent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abonent_params
      params.require(:abonent).permit(:ticket, :surname, :name, :lastname, :adress, :phone)
    end
end
