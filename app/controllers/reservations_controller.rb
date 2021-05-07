class ReservationsController < ApplicationController
  
  def index
    @user = current_user
    @reservations = @user.reservations   
    #@userの子であるreseraavationに限定する。
  end

  def new
    @reservation = Reservation.new(start: params[:start], finish: params[:finish], count: params[:count], room_id: params[:room_id], cost: params[:cost])
    if params[:start].blank? || params[:finish].blank? || params[:count].blank?
      redirect_to("/rooms/show/#{@reservation.room_id}")
    else
      render("reservations/new")
    end
  end

  def create
    @reservation = Reservation.new(start: params[:start], finish: params[:finish], count: params[:count], total_amount: params[:total_amount], cost: params[:cost], room_id: params[:room_id])
    @reservation.user_id="#{current_user.id}"
    @reservation.save!
    redirect_to("/reservations/#{@reservation.id}/show")
  end

  def show
    @reservation = Reservation.find_by(id: params[:id])
    @room = Room.find_by(id: @reservation.room_id)

  end

  def edit
  end

  def update
  end

  def destroy
  end

end
