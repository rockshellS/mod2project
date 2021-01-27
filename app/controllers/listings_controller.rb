class ListingsController < ApplicationController
    # before_action :require_login

    def index 
        @listings = Listing.all
    end 

    def show
        @listing = Listing.find(params[:id])
    end 

    def new 
        @listing = Listing.new
    end 

    def create
        @listing = Listing.new(listing_params)
        @listing.owner_id = session[:user_id]
        if @listing.save
            redirect_to listing_path(@listing)
        else 
            render :new
        end 
    end 

    def edit 
        @listing = Listing.find(params[:id])
    end 

    def update 
        @listing = Listing.find(params[:id])
        if @listing.update(listing_params)
            redirect_to listing_path(@listing)
        else 
            render :edit
        end 
    end 

    def confirm_delete
        @listing = Listing.find(params[:id])
    end 

    def destroy
        @listing = Listing.find_by(params[:id])
        @listing.destroy
        redirect_to user_path(session[:user_id])
    end

    private 
    def listing_params
        params.require(:listing).permit(:title, :description, :category_id, :claimed, :owner_id, :recipient_id) 
    end 

end
