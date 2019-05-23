class BookingsController < ApplicationController
  before_action :set_booking, only: [:accept, :decline, :destroy]

  def accept
    @booking.status = 'accepted'
    @booking.save
    redirect_to dashboard_path
  end

  def decline
    @booking.status = 'declined'
    @booking.save
    redirect_to dashboard_path
  end

  def destroy
    @booking.delete
    redirect_to dashboard_path
  end

  def create
    @booking = Booking.create(booking_params)
    @instrument = @booking.instrument
    if @booking.save
      render "dashboard"
    else
      render "instruments/show"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:instrument, :user, :total_price)
  end
end
