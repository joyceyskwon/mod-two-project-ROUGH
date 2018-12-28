class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.all
  end

  def show

  end

  def new
    @user = User.new
    @companies = Company.all
  end

  def create
    @user = User.create(user_params)
    @companies = Company.all
    if @user.valid?
      redirect_to @user
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def edit

  end

  def update
    @user.update_attributes(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :company_id)
  end

end # end of UsersController
