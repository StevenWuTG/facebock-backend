class LikesController < ApplicationController

    def index
        likes = Like.all
        render json: likes, except: [:created_at, :updated_at]
    end

    def create
        like = Like.create!(like_params)
        if like.valid?
            render json: like,  except: [:created_at, :updated_at]
        else
            render json: {errors: like.errors} 
        end 
    end

    def show
        like = Like.find(params[:id])
        render json: like, except: [:created_at, :updated_at]
    end

    def update
        like = Like.find(params[:id])
        if (like.update!(like_params))
            render json: like
        else
            render json: {errors: like.errors} 
        end 
    end 

    def destroy
        allLike = Like.all
        like = Like.find(params[:id])
        like.destroy
        render json: allLike
    end

    private

    def like_params
        params.permit(:user, :post)
    end

end
