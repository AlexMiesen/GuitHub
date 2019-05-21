class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.select(params[:category])
  end
end
