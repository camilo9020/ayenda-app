class RoomsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_room, only: [:edit, :update, :destroy]

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      flash[:success] = 'The Room was create successfully'
      redirect_to @room.hotel
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @room.update(room_params)
      redirect_to @room.hotel
    else
      render :edit
    end
  end

  def destroy
    @hotel = Hotel.find(@room.hotel_id)
    @room.destroy
    flash[:succes] = 'The room was delete successfully'
    redirect_to @hotel
  end

private
  def room_params
    params.require(:room).permit(:room_type, :capacity, :price, :available, :hotel_id)
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
