class InstrumentsController < ApplicationController
  before_action :set_instruments, only: [:show, :edit, :update]

  def show
  end

  def index
    @instruments = Instrument.all
    if params[:instruments].present?
      if params[:instruments][:location].present?
        @instruments = @instruments.where(location: params[:instruments][:location])
      end

      if params[:instruments][:category].present?
        @instruments = @instruments.where(category: params[:instruments][:category])
      end
    end
  end

  def edit
  end

  def update
    @instrument.update(instruments_params)

    if @instrument.update(instruments_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def instruments_params
    params.require(:instrument).permit(:category, :name, :description, :location, :photo, :price_per_day)
  end

  def set_instruments
    @instrument = Instrument.find(params[:id])
  end
end
