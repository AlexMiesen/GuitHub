class InstrumentsController < ApplicationController
  def show
    @instrument = Instrument.find(params[:id])
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

  def new
    @instrument = Instrument.new
  end

  def create
    @instrument = Instrument.new # TODO HERE
    @instrument.user = current_user
    # HERE TOO
  end
end
