class InstrumentsController < ApplicationController
  def show
    @instrument = Instrument.find(params[:id])
  end
end
