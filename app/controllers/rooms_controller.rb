class RoomsController < ApplicationController
  def index
    @user = current_user
    @rooms = @user.rooms
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_name: params[:room_name], room_introduction: params[:room_introduction], cost: params[:cost], address: params[:address])
    @room.user_id="#{current_user.id}"

    if @room.save
      @room.image_room="#{@room.id}.jpg"
      image=params[:image_room]
      File.binwrite("app/assets/images/room/#{@room.image_room}", image.read)
      redirect_to("/rooms/show/#{@room.id}")
    else
      render("rooms/new")
    end
  end

  def show
    @room = Room.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
