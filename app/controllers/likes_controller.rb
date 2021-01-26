class LikesController < ApplicationController
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
            render :new
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

    private 
    def like_params
        params.require(:like).permit(:listing_id, :liker_id) 
    end 

end
