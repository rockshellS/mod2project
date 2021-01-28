class UsersController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def index 
        @users = User.all
    end 

    def show
        @user = User.find(params[:id])
    end 

    def listings
        @user = User.find_by(id: session[:user_id])
    end

    def new 
        @user = User.new
    end 

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to '/home'
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
        Listing.where(owner_id: @user.id).destroy_all
        @user.destroy
        session.delete :user_id
        redirect_to '/'
    end

    private 
    def user_params
        params.require(:user).permit(:name, :username, :password, :password_confirmation, :bio, :location_id) 
    end 


end
