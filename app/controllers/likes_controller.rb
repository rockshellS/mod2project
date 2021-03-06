class LikesController < ApplicationController
    # before_action :require_login

    def index 
        @likes = Like.all
    end 

    def show
        @like = Like.find(params[:id])
    end 

    def new 
        @like = Like.new
    end 

    def create
        @like = Like.new(like_params)
        if @like.save
            # @listing = @like.listing
            redirect_to listing_path(@like.listing)
        else 
            redirect_to listing_path(@like.listing)
            #we need to add in an error message
        end 
    end 

    def edit 
        @like = Like.find(params[:id])
    end 

    def update 
        @like = Like.find(params[:id])
        if @like.update(like_params)
            redirect_to like_path(@like)
        else 
            render :edit
        end 
    end 

    def destroy

        @like = Like.find_by(like_params)
        @listing = Listing.find_by(id: @like.listing_id)
        @like.destroy
        redirect_to listing_path(@listing)
    end 

    private 
    def like_params
        params.require(:like).permit(:listing_id, :liker_id) 
    end 

end
