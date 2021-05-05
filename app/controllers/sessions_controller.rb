class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.find_by(mail: params[:session][:mail].downcase)
    if user && user.authenticate(params[:session][:password])
      # ログイン成功
      #session[:user_id] = @user.id
      log_in user
      redirect_to :travel_index
    else
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to :travel_index
  end

  def login(mail, password)
    @user = User.find_by(mail: mail)
    if @user && @user.authenticate(password)
      # ログイン成功
      session[:user_id] = @user.id
      return true
    else
      # ログイン失敗
      return false
    end
  end

end
