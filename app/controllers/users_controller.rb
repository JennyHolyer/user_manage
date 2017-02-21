class UsersController < ApplicationController
  def index
    @users = User.all

  end

  def new
    #   render 'users/new' optional
  end

  def show
    @user = User.find(params[:id])

  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    User.create(first_name: params[:f_name], last_name: params[:l_name],email: params[:email],password: params[:password])


    redirect_to '/'
  end

  def update
    User.find(params[:id]).update(first_name: params[:f_name], last_name: params[:l_name],email: params[:email],password: params[:password])

    redirect_to '/'
  end

  def delete
    User.find(params[:id]).destroy

    redirect_to '/'
  end
end
