class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]

    def index
      @deliveries = Delivery.all
    end

    def show
    end

    def view
        @deliveries = Delivery.all
    end

    def new
      @delivery = Delivery.new
    end

    def edit
    end

    def create
      @delivery = Delivery.new(delivery_params)

      respond_to do |format|
        if @delivery.save
          format.html { redirect_to @delivery, notice: 'Delivery was successfully created.' }
          format.json { render :show, status: :created, location: @delivery }
        else
          format.html { render :new }
          format.json { render json: @delivery.errors, status: :unprocessable_entity }
        end
      end
    end

    def update
      respond_to do |format|
        if @delivery.update(delivery_params)
          format.html { redirect_to @delivery, notice: 'Delivery was successfully updated.' }
          format.json { render :show, status: :ok, location: @delivery }
        else
          format.html { render :edit }
          format.json { render json: @delivery.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @delivery.destroy
      respond_to do |format|
        format.html { redirect_to deliveries_url, notice: 'Delivery was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      def set_delivery
        @delivery = Delivery.find(params[:id])
      end

      def delivery_params
        params.require(:delivery).permit(:dateissue, :datereturn)
      end
end
