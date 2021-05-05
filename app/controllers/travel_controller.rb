class TravelController < ApplicationController
  def index
  end
  
  def search
    #Viewで入力された(params[:search]をRoomの列からwhereメソッドを使い探し＠travelへ代入
    @rooms = Room.where(address: params[:search])
  end

  def keyword
    #Viewで入力された(params[:search]をRoomの列からsearchメソッドを使い探し＠travelへ代入
    @rooms = Room.search(params[:search])
  end

  def show
    @rooms = Room.where(address: params[:search])
  end

end
