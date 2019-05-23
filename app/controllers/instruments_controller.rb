class InstrumentsController < ApplicationController
  def show
    @instrument = Instrument.find(params[:id])
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
end
