class ReservationsController < ApplicationController

  before_filter :load_restaurant
  before_filter :ensure_logged_in, only: [:create, :destroy]

  def show
    @reservation = Reservation.find(params[:id])
    end

   def new
    @reservation = @restaurant.reservations.build
  end

  def create
    @reservation = @restaurant.reservations.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to restaurants_path, notice: 'Your reservation has been successfully booked!'
    else
      render 'restaurants/show'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:people, :time, :date, :comment, :id).merge({user_id: current_user.id})
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end

