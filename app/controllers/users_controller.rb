class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def create
    @users = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created'
    else
      render action: 'new'
    end
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully update.'
    else
      render action: 'edit'
    end
  end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_athlete
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet
    def user_params
      params.require(:user).permit(:username, :email)
    end

end