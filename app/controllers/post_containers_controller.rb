class PostContainersController < ApplicationController
# This is our version of the wall 
    def index
        postsContainer = PostContainer.all
        render json: postsContainer, except: [:created_at, :updated_at]
    end

    def create
        post_container = PostContainer.create!(post_container_params)
        if post_container.valid?
            render json: post_container,  except: [:created_at, :updated_at]
        else
            render json: {errors: post_container.errors} 
        end 
    end

    def show
        post_container = PostContainer.find(params[:id])
        render json: post_container, except: [:created_at, :updated_at]
    end

    def update
        post_container = PostContainer.find(params[:id])
        if (post_container.update!(post_params))
            render json: post_container
        else
            render json: {errors: post_container.errors} 
        end 
    end 

    def destroy
        allpostContainer = PostContainer.all
        post_container = PostContainer.find(params[:id])
        post_container.destroy
        render json: allpostContainer
    end

    private

    def post_container_params
        params.permit(:post,:user)
    end
end
