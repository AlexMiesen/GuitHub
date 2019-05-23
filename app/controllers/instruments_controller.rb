class InstrumentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  before_action :set_instruments, only: [:show, :edit, :update]

  def show
  end

  def index
    @instruments = Instrument.all
    if params[:query].present?
      sql_query = "location ILIKE :query OR category ILIKE :query OR description ILIKE :query OR name ILIKE :query"
      @instruments = Instrument.where(sql_query, query: "%#{params[:query]}%")

    elsif params[:instruments].present?
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

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new(instrument_params)
    @instrument.user = current_user

    if @instrument.save
      redirect_to instruments_path(@instrument)
    else
      render :new
    end
  end

  private

  def instrument_params
    params.require(:instrument).permit(:category, :name, :description, :location, :photo, :price_per_day)
  end

  def set_instruments
    @instrument = Instrument.find(params[:id])
  end
end
