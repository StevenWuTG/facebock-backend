class FriendsController < ApplicationController

    def index
        friends = Friend.all
        render json: friends, except: [:created_at, :updated_at]
    end

end
