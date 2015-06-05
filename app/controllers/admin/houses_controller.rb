class Admin::HousesController < ApplicationController

  def index

  end

  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to admin_path
    else
      render :new
    end
  end

  def new
    @house = House.new
  end

  def edit

  end

  def show

  end

  def update

  end

  def destroy

  end

  private
  def house_params
    params.require(:house).permit(:zipcode)
  end

end