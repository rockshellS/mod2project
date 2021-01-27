class UsersController < ApplicationController
    # before_action :require_login
    # skip_before_action :require_login, only: [:new, :create]

    def index 
        @users = User.all
    end 

    def show
        @user = User.find(params[:id])
    end 

    def new 
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to user_path(@user)
        else 
            render :new
        end 
    end 

    def edit 
        @user = User.find(params[:id])
    end 

    def update 
        @user = User.find(params[:id])
        if @user.update(user_params)
            redirect_to user_path(@user)
        else 
            render :edit
        end 
    end 

    def confirm_delete
        @user = User.find(params[:id])
    end 

    def destroy
        @user = User.find_by(id: session[:user_id])
        @user.destroy
        session.delete :user_id
        redirect_to '/'
    end

    private 
    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :bio) 
    end 


end
