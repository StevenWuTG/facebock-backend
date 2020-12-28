class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts, except: [:created_at, :updated_at]
    end
end
