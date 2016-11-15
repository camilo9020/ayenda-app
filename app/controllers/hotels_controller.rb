class HotelsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_hotel, only: [:show, :edit, :update, :destroy]

  def index
    @hotels = Hotel.all.order('created_at DESC')
  end

  def show
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      flash[:success] = "The Hotel was create successfully"
      redirect_to @hotel
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @hotel.update(hotel_params)
      flash[:success] = "The Hotel was updated successfully"
      redirect_to @hotel
    else
      render :edit
    end
  end

  def destroy
    @hotel.destroy
    flash[:success] = "The Hotel was delete successfully"
    redirect_to root_path
  end

private

  def set_hotel
    @hotel = Hotel.find(params[:id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :address, :rank)
  end

end
