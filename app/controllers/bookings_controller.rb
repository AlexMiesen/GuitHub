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
    @booking = Booking.new(booking_params)
    @instrument = Instrument.find(params[:instrument_id])

    @booking.instrument = @instrument
    unlocked = unlock_params
    @booking.startdate = Date.parse("#{unlocked[:booking]["startdate(1i)"]}-#{unlocked[:booking]["startdate(2i)"]}-#{unlocked[:booking]["startdate(3i)"]}")
    @booking.enddate = Date.parse("#{unlocked[:booking]["enddate(1i)"]}-#{unlocked[:booking]["enddate(2i)"]}-#{unlocked[:booking]["enddate(3i)"]}")
    @booking.no_days = @booking.enddate.ld - @booking.startdate.ld
    @booking.total_price = @booking.no_days * @instrument.price_per_day
    @booking.user = current_user

    if @booking.save
      redirect_to dashboard_path
    else
      render "instruments/show"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:instrument, :user, :total_price, :enddate, :startdate)
  end

  def unlock_params
    params.permit(:instrument, :user, :total_price, :enddate, :startdate, booking: {})
  end
end
