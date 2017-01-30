class AbonentsController < ApplicationController
  before_action :set_abonent, only: [:show, :edit, :update, :destroy]

  def index
    @abonents = Abonent.all
  end

  def show
  end

  def new
    @abonent = Abonent.new
  end

  def view
    @abonents = Abonent.all
  end

  def edit
  end

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

  def destroy
    @abonent.destroy
    respond_to do |format|
      format.html { redirect_to abonents_url, notice: 'Abonent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_abonent
      @abonent = Abonent.find(params[:id])
    end

    def abonent_params
      params.require(:abonent).permit(:ticket, :surname, :name, :lastname, :adress, :phone)
    end
end