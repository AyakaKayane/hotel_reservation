class UsersController < ApplicationController

  before_action :logged_in_user, only:[:destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params[:name], mail: params[:mail], password: params[:password])
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/new")
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.name = params[:name]
    @user.mail = params[:mail]
    @user.password = params[:password]
    @user.profile = params[:profile]
    @user.image_name="#{@user.id}.jpg"
    image=params[:image_name]
    File.binwrite("app/assets/images/#{@user.image_name}", image.read)
    if @user.save
      flash[:notice] = "ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end

  def destroy
  end

end
